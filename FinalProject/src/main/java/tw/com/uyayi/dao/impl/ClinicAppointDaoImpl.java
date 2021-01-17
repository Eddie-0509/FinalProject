package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

@Repository
public class ClinicAppointDaoImpl implements ClinicAppointDao {

	@Autowired
	SessionFactory factory ;
	
	@Override
	public LinkedHashSet<Items> getClinicItem(Clinic clinic) {
//		Session session=factory.getCurrentSession();
//		String hqld = "from Dentist d where d.clinicBean =:clinic";
//		ArrayList<Dentist> dentistlist = (ArrayList<Dentist>) session.createQuery(hqld).setParameter("clinic",clinic).getResultList();
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		LinkedHashSet<Items> itemlist =new LinkedHashSet<Items>();
		for (int i=0;i<denn.size();i++) {
			itemlist.addAll((denn.get(i).getItemsBean()));
		}
		return itemlist;
	}

	@Override
	public List<Dentist> getDentist(Clinic clinic,String item) {
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		List<Dentist> thisDentistList=new ArrayList<Dentist>();
//		System.out.println("=================================");
//		System.out.println("denn"+denn);
//		System.out.println("=================================");
		for (int i=0;i<denn.size();i++) {
//			System.out.println("dennItemBean"+denn.get(i).getItemsBean());
			Set<Items> itemsBean = denn.get(i).getItemsBean();
			List<Items> itemsBeann=new ArrayList<Items>(itemsBean);
			for(int r=0;r<itemsBeann.size();r++) {
				String name = itemsBeann.get(r).getItemName();
//				System.out.println("=================================");
//				System.out.println("name"+name);
//				System.out.println("=================================");
				if(name.equals(item)) {					
					thisDentistList.add(denn.get(i));
//					System.out.println("thisDentistList"+thisDentistList);
				}
			}

		}
		return thisDentistList;
	}


	@Override
	public Set<String> getDentistTime(Clinic clinic,String item, String dentist) {
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		Set<String> thisDentistTime=new HashSet<String>();
		
		
		for (int i=0;i<denn.size();i++) {
			Set<Items> itemsBean = denn.get(i).getItemsBean();
			ArrayList<Items> itemsBeann=new ArrayList<Items>(itemsBean);
	
			if(denn.get(i).getDentistName().equals(dentist)) {
				Set<TimeTable> timeTable = denn.get(i).getTimeTables();
				List<TimeTable> timeTablee=new ArrayList<TimeTable>(timeTable);
				for(int x=0;x<timeTablee.size();x++) {
					thisDentistTime.add(timeTablee.get(x).getTimeInterval());
				}
			};
			if(dentist.equals("anyone")){
				for(int r=0;r<itemsBeann.size();r++) {		
					if(itemsBeann.get(r).getItemName().equals(item)) {
//						System.out.println(itemsBeann.get(r).getItemName());
						Set<TimeTable> timeTable = denn.get(i).getTimeTables();
						List<TimeTable> timeTablee=new ArrayList<TimeTable>(timeTable);
						for(int x=0;x<timeTablee.size();x++) {
							thisDentistTime.add(timeTablee.get(x).getTimeInterval());
						}
					}
				}
			}
		}

		return thisDentistTime;
	}

	@Override
	public LinkedHashMap<String, ArrayList<TimeTable>> getAppointable(Clinic clinic,
			String item, String dentist, String timeInterval) {
		Set<Dentist> den = clinic.getDentists();
		Iterator<Dentist> itr = den.iterator();
		int weekDay = 0;
		long millis=System.currentTimeMillis(); 
		Date date=new Date(millis);//取時間
		Calendar calendar = new GregorianCalendar();
		Set<String> datelist =new HashSet<String>();
		LinkedHashMap<String, ArrayList<TimeTable>> appointable=new LinkedHashMap<String, ArrayList<TimeTable>>();
		while (itr.hasNext()) {
			Dentist bean=itr.next();
			String name=bean.getDentistName();
			List<TimeTable> interval = bean.getTimeTables().stream().filter(a -> a.getTimeInterval().equals(timeInterval)).collect(Collectors.toList());
			Collections.sort(interval, new Comparator<TimeTable>() {
                public int compare(final TimeTable object1, final TimeTable object2) {
                    return object1.getTimes().compareToIgnoreCase(object2.getTimes());
                }
            });

		    if(name.equals(dentist)) {
			   System.out.println("名字2："+name);
			   for(int i=0;i<interval.size();i++) {
				   System.out.println("時段："+interval.get(i).getWeekdays()+interval.get(i).getTimes());
				   for(int r=0;r<=90;r++) {
				    	  calendar.setTime(date);
					      calendar.add(calendar.DATE,+r);//把日期往前減少一天，若想把日期向後推一天則將負數改為正數
					      Date date2=new Date(calendar.getTimeInMillis()); 
					      int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
					      SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
					      String dateString = formatter.format(date2);
//					      System.out.println(date2+" "+dayOfWeek);
					 
				 switch(interval.get(i).getWeekdays()) {
				   	case "Sunday":
				   		weekDay=1;
				   		break;
				   	case "Monday":
				   		weekDay=2;
				   		break;
				   	case "Tuesday":
				   		weekDay=3;
				   		break;
				   	case "Wednesday":
				   		weekDay=4;
				   		break;
				   	case "Thursday":
				   		weekDay=5;
				   		break;
				   	case "Friday":
				   		weekDay=6;
				   		break;
				   	case "Saturday":
				   		weekDay=7;
				   		break;
				   }
			      if(dayOfWeek==weekDay) {
			    	  datelist.add(dateString);
			      }
				 }
			    
			   }   
		    }
		}
		ArrayList<String> datelist2=new ArrayList<String>(datelist);
		Collections.sort(datelist2, new Comparator <String>() {
		    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			public int compare(final String time1, final String time2) {
                try {
					return df.parse(time1).compareTo(df.parse(time2));
				} catch (ParseException e) {
		            throw new IllegalArgumentException(e);

				}
			} 
        });
		System.out.println(datelist2);
		return null;
	}

}