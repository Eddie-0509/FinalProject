package tw.com.uyayi.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicChartsDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;

@Repository
public class ClinicChartsDaoImpl implements ClinicChartsDao{
	
	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String,Integer> getItemsData(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> ItemData=new LinkedHashMap<String,Integer>();
		List<String> ItemNamelist = session.createQuery("Select itemName from Items").getResultList();
		for (int i=0;i<ItemNamelist.size();i++) {
			ItemData.put(ItemNamelist.get(i), 0);
		}
		for (int i=0;i<allAppList.size();i++) {
			for(Object key : ItemData.keySet()) {
				if(allAppList.get(i).getItemBean().getItemName().equals(key.toString())) {
					int plus = ItemData.get(key.toString())+1;
					ItemData.put(key.toString(),plus);
				}
			}
		}
		return ItemData;
	}

	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, Integer> getDentistData(Clinic clinic, String year, String month) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> DentistData=new LinkedHashMap<String,Integer>();
		List<String> Dentistlist = session.createQuery("Select dentistName from Dentist d where d.clinicBean =:clinic")
				.setParameter("clinic", clinic).getResultList();
		for (int i=0;i<Dentistlist.size();i++) {
			DentistData.put(Dentistlist.get(i), 0);
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i=0;i<allAppList.size();i++) {
			String str = sdf.format(allAppList.get(i).getAppointDate());			
			if(str.substring(0,4).equals(year)&&str.substring(5,7).equals(month)) {
				for(Object key : DentistData.keySet()) {
					if(allAppList.get(i).getDentistBean().getDentistName().equals(key.toString())) {
						int plus = DentistData.get(key.toString())+1;
						DentistData.put(key.toString(),plus);
					}
				}
			}
		}
		return DentistData;
	}

	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, List<Integer>> getTotalData(Clinic clinic, String year, String month) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> TotalData=new LinkedHashMap<String,Integer>();
		LinkedHashMap<String,List<Integer>> TotalData2=new LinkedHashMap<String,List<Integer>>();
		List<Integer> b=new ArrayList<Integer>();
		b.add(0);
		b.add(0);
		 Calendar a = Calendar.getInstance();  
		    a.set(Calendar.YEAR,  Integer.valueOf(year));  
		    a.set(Calendar.MONTH,  Integer.valueOf(month) - 1);  
		    a.set(Calendar.DATE, 1);//把日期設定為當月第一天
		    a.roll(Calendar.DATE, -1);//日期回滾一天，也就是最後一天
		    int maxDate = a.get(Calendar.DATE);  
		for (int i=1;i<=maxDate;i++) {
			String y=String.valueOf(i);
			if(i<10) {
				y="0"+String.valueOf(i);
			}
			TotalData.put(y, 0);
			TotalData2.put(y,b);
		} 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i=0;i<allAppList.size();i++) {
			String dateString = sdf.format(allAppList.get(i).getAppointDate());
//			System.out.println(dateString.substring(0, 4)+" "+dateString.substring(5, 7)+" "+ dateString.substring(8));
//			System.out.println(year+" "+month);
			if(dateString.substring(0, 4).equals(year) && dateString.substring(5, 7).equals(month) && !allAppList.get(i).getMemberReply().equals("取消")) {
				//平台會員預約
				if(allAppList.get(i).getMemberBean()!=null) {
					for(Object key : TotalData.keySet()) {
						if(dateString.substring(8).equals(key.toString())) {
							int plus = TotalData.get(key)+1;
							TotalData.put(key.toString(),plus);
							List<Integer> thisList = new ArrayList<Integer>(TotalData2.get(key));
							thisList.set(0,thisList.get(0)+1);
							TotalData2.put(key.toString(),thisList);
						}
					}
				//診所方預約
				}else {
					for(Object key : TotalData.keySet()) {
						if(dateString.substring(8).equals(key.toString())) {
							int plus = TotalData.get(key)+1;
							TotalData.put(key.toString(),plus);
							List<Integer> thisList = new ArrayList<Integer>(TotalData2.get(key));
							thisList.set(1,thisList.get(1)+1);
							TotalData2.put(key.toString(),thisList);
						}
					}
				}
			}
		}
		System.out.println(TotalData2);
		return TotalData2;
	}

	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, Integer> getGenderData(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> GenderData=new LinkedHashMap<String,Integer>();
		GenderData.put("男",0);
		GenderData.put("女",0);
		for (int i=0;i<allAppList.size();i++) {
			System.out.println(allAppList.get(i).getAppointmentPkId());
			if(allAppList.get(i).getMemberBean()!=null) {
				System.out.println(allAppList.get(i).getMemberBean().getMemberIdNumber().substring(1,2));
				if(allAppList.get(i).getMemberBean().getMemberIdNumber().substring(1,2).equals("1")) {
					int plus = GenderData.get("男")+1;
					GenderData.put("男",plus);
				}
				if(allAppList.get(i).getMemberBean().getMemberIdNumber().substring(1,2).equals("2")) {
					int plus = GenderData.get("女".toString())+1;
					GenderData.put("女",plus);
				}
			}else if(allAppList.get(i).getMemberBean()==null && allAppList.get(i).getPatientIdNumber().length()==10) {
				System.out.println(allAppList.get(i).getPatientIdNumber().substring(1,2));

				if(allAppList.get(i).getPatientIdNumber().substring(1,2).equals("1")) {
					int plus = GenderData.get("男")+1;
					GenderData.put("男",plus);
				}
				if(allAppList.get(i).getPatientIdNumber().substring(1,2).equals("2")) {
					int plus = GenderData.get("女".toString())+1;
					GenderData.put("女",plus);
				}

				
			}else {
				continue;
			}

		}
		return GenderData;
	}
	


	
}
