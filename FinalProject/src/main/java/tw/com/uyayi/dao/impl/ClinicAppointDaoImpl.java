package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.TimeTable;

@Repository
public class ClinicAppointDaoImpl implements ClinicAppointDao {

	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashSet<Items> getClinicItem(Clinic clinic) {
		Session session=factory.getCurrentSession();
		String hqld = "from Dentist d where d.clinicBean =:clinic";
		ArrayList<Dentist> dentistlist = (ArrayList<Dentist>) session.createQuery(hqld).setParameter("clinic",clinic).getResultList();
//		Set<Dentist> den = clinic.getDentists();
//		List<Dentist> denn = new ArrayList<Dentist>(den);
		LinkedHashSet<Items> itemlist =new LinkedHashSet<Items>();
		for (int i=0;i<dentistlist.size();i++) {
			itemlist.addAll((dentistlist.get(i).getItemsBean()));
		}
		return itemlist;
	}

	@Override
	public List<Dentist> getDentist(Clinic clinic,String item) {
		Session session=factory.getCurrentSession();
		String hqld = "from Dentist d where d.clinicBean =:clinic";
		@SuppressWarnings("unchecked")
		List<Dentist> dentistlist = session.createQuery(hqld)
				.setParameter("clinic",clinic).getResultList();
//		Set<Dentist> den = clinic.getDentists();
//		List<Dentist> denn = new ArrayList<Dentist>(den);
		List<Dentist> thisDentistList=new ArrayList<Dentist>();
//		System.out.println("=================================");
//		System.out.println("denn"+denn);
//		System.out.println("=================================");
		for (int i=0;i<dentistlist.size();i++) {
//			System.out.println("dennItemBean"+denn.get(i).getItemsBean());
			Set<Items> itemsBean = dentistlist.get(i).getItemsBean();
			List<Items> itemsBeann=new ArrayList<Items>(itemsBean);
			for(int r=0;r<itemsBeann.size();r++) {
				String name = itemsBeann.get(r).getItemName();
//				System.out.println("=================================");
//				System.out.println("name"+name);
//				System.out.println("=================================");
				if(name.equals(item)) {					
					thisDentistList.add(dentistlist.get(i));
//					System.out.println("thisDentistList"+thisDentistList);
				}
			}

		}
		return thisDentistList;
	}


	@Override
	public Set<String> getDentistTime(Clinic clinic,String item, String dentist) {
		Session session=factory.getCurrentSession();
		String hqld = "from Dentist d where d.clinicBean =:clinic";
		@SuppressWarnings("unchecked")
		List<Dentist> dentistlist = session.createQuery(hqld)
				.setParameter("clinic",clinic).getResultList();
		Set<String> thisDentistTime=new HashSet<String>();
		
	
		for (int i=0;i<dentistlist.size();i++) {
			Set<Items> itemsBean = dentistlist.get(i).getItemsBean();
			ArrayList<Items> itemsBeann=new ArrayList<Items>(itemsBean);
	
			if(dentistlist.get(i).getDentistName().equals(dentist)) {
				Set<TimeTable> timeTable = dentistlist.get(i).getTimeTables();
				List<TimeTable> timeTablee=new ArrayList<TimeTable>(timeTable);
				for(int x=0;x<timeTablee.size();x++) {
					thisDentistTime.add(timeTablee.get(x).getTimeInterval());
				}
			};
			if(dentist.equals("anyone")){
				for(int r=0;r<itemsBeann.size();r++) {		
					if(itemsBeann.get(r).getItemName().equals(item)) {
//						System.out.println(itemsBeann.get(r).getItemName());
						Set<TimeTable> timeTable = dentistlist.get(i).getTimeTables();
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


	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, List<String>> getAppointable(Clinic clinic,
			String item, String dentist, String timeInterval) {
		int weekDay = 0;
		long millis=System.currentTimeMillis(); 
		Date date=new Date(millis);//取時間
		Calendar calendar = new GregorianCalendar();
		
		Session session=factory.getCurrentSession();
		List<Dentist> thisDen = session.createQuery("From Dentist d where d.clinicBean =:clinic and d.dentistName =:dentist").
		setParameter("clinic", clinic).setParameter("dentist", dentist).getResultList();
		System.out.println("醫生："+thisDen.get(0));
		
		LinkedHashMap<String, List<String>> appointable=new LinkedHashMap<String, List<String>>();

	   System.out.println("名字："+thisDen.get(0).getDentistName());
	   
	   List<TimeTable> interval =new ArrayList<TimeTable>();
	   //把該醫生該時間段的內容存成MAP
	   Set<TimeTable> timeTables = thisDen.get(0).getTimeTables();
	   if(timeInterval.equals("anytime")) {
		   interval =timeTables.stream().collect(Collectors.toList());
	   }else {
		   interval =timeTables.stream().filter(a -> a.getTimeInterval().equals(timeInterval)).collect(Collectors.toList());		   
	   }
	   Collections.sort(interval, new Comparator<TimeTable>() {
           public int compare(final TimeTable object1, final TimeTable object2) {
               return object1.getTimes().compareToIgnoreCase(object2.getTimes());
           }
       });
		   
	   LinkedHashMap<String,List<String>> weekDayTimeMap = new LinkedHashMap<String,List<String>>();
	   List<String> sunDayTimeMapList=new LinkedList<String>();
	   List<String> monDayTimeMapList=new LinkedList<String>();
	   List<String> tueDayTimeMapList=new LinkedList<String>();
	   List<String> wedDayTimeMapList=new LinkedList<String>();
	   List<String> thuDayTimeMapList=new LinkedList<String>();
	   List<String> friDayTimeMapList=new LinkedList<String>();
	   List<String> satDayTimeMapList=new LinkedList<String>();
	   for(int x=0;x<interval.size();x++) {					  
		   switch(interval.get(x).getWeekdays()) {
			   case "Sunday" :
				   sunDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),sunDayTimeMapList);
				   break;
			   case "Monday" :
				   monDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),monDayTimeMapList);
				   break;
			   case "Tuesday" :
			   	   tueDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),tueDayTimeMapList);
				   break;
			   case "Wednesday" :
			   	   wedDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),wedDayTimeMapList);
				   break;
			   case "Thursday" :
			   	   thuDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),thuDayTimeMapList);
				   break;
			   case "Friday" :
			   	   friDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),friDayTimeMapList);
				   break;
			   case "Saturday" :
			   	   satDayTimeMapList.add(interval.get(x).getTimes());
				   weekDayTimeMap.put(interval.get(x).getWeekdays(),satDayTimeMapList);
				   break;
		   }
	   }
			  

	   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//	   System.out.println("183weekDayTimeMap："+weekDayTimeMap);
	   //生成90天內的日期清單
	   for(int r=0;r<=90;r++) {
    	  calendar.setTime(date);
	      calendar.add(calendar.DATE,+r);//把日期往前減少一天，若想把日期向後推一天則將負數改為正數
	      Date date2=new Date(calendar.getTimeInMillis()); 
	      int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
	      String dateString = formatter.format(date2);
	      for(Object key : weekDayTimeMap.keySet()) {
	    	  switch(key.toString()) {
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
		  //如果日期清單的星期跟醫生有門診的星期一樣，把它存入
		      if(dayOfWeek==weekDay) {
//			      System.out.println("dateString:"+dateString);
//			      System.out.println("dayTimeTable:"+weekDayTimeMap.get(key));
			      List<String> list = new ArrayList(weekDayTimeMap.get(key));
		    	  appointable.put(dateString,list);
		    	  
		      }
	      }
	   }
	      //如果已經有預約，把它刪除	      
	      String apphql = "From Appointment a where a.dentistBean =:dentist and a.appointDate =:appointDate and a.timeTableBean =:timeTable";
	      String tthql = "From TimeTable tt where tt.weekdays =:weekdays and tt.times =:times";
	      List ttlist=new ArrayList();
	      List<Appointment> apped;
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	      for(Object key : weekDayTimeMap.keySet()) {
	    	  for(int a=0;a<weekDayTimeMap.get(key).size();a++) {
	    		  ttlist = session.createQuery(tthql).setParameter("weekdays", key).setParameter("times", weekDayTimeMap.get(key).get(a)).getResultList();
	    		  for(Object appointableKey : appointable.keySet()) {
					try {
						apped = session.createQuery(apphql).setParameter("dentist", thisDen)
				      	  .setParameter("appointDate", sdf.parse(appointableKey.toString())).setParameter("timeTable", ttlist.get(0)).getResultList();
//						System.out.println("236"+apped);
						if(!apped.isEmpty()) {
//							System.out.println(apped.get(0).getAppointDate());
//							System.out.println(appointable.get(formatter.format(apped.get(0).getAppointDate())));
	//				      		System.out.println(dateString+" "+formatter.format(apped.get(0).getAppointDate()));
	//				      	if(appointableKey.equals(formatter.format(apped.get(0).getAppointDate())) ){
	//		    		      		System.out.println("一樣RRRRRRRRRRR");
//							List appointList = (List)appointable.get("2021-04-05");
//							appointList.remove("12:00-12:30");
							List<String> list = new ArrayList(appointable.get(formatter.format(apped.get(0).getAppointDate())));
//							System.out.println("BEFORE:"+list);
//							System.out.println("253"+weekDayTimeMap);
							list.remove(apped.get(0).getTimeTableBean().getTimes());
							appointable.put(formatter.format(apped.get(0).getAppointDate()),list);
//							System.out.println("AFTER："+list);
//							System.out.println("255"+weekDayTimeMap);
	//				      	} 
						}
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		    	  }
	    	  }
	      }
	    
    
//	    System.out.println("267"+weekDayTimeMap);

//		System.err.println(appointable);
		return appointable;
	}

	@Override
	public Items getItemBean(String itemName) {
		Session session=factory.getCurrentSession();
		String hqli = "from Items i where i.itemName =:itemName";
		List<Items> list =  session.createQuery(hqli).setParameter("itemName",itemName).getResultList();
		return list.get(0);
	}

	@Override
	public Dentist getDentistBean(String dentistName) {
		Session session=factory.getCurrentSession();
		String hqld = "from Dentist d where d.dentistName =:dentistName";
		List<Dentist> list =  session.createQuery(hqld).setParameter("dentistName",dentistName).getResultList();
		return list.get(0);
	}

	@Override
	public TimeTable getTimeTableBean(Date appointDate, String times) {
		Calendar c = Calendar.getInstance();
		c.setTime(appointDate); 
		int dayOfWeek = c.get(Calendar.DAY_OF_WEEK);
		String weekDay="";
//		System.out.println("date="+appointDate);
//		System.out.println("dayOfWeek="+dayOfWeek);
		switch (dayOfWeek){
			case 1:
		   		weekDay="Sunday";
		   		break;
		   	case 2:
		   		weekDay="Monday";
		   		break;
		   	case 3:
		   		weekDay="Tuesday";
		   		break;
		   	case 4:
		   		weekDay="Wednesday";
		   		break;
		   	case 5:
		   		weekDay="Thursday";
		   		break;
		   	case 6:
		   		weekDay="Friday";
		   		break;
		   	case 7:
		   		weekDay="Saturday";
		   		break;	   
		}
//		System.out.println("weekDay="+weekDay);
//		System.out.println("times="+times);
		Session session=factory.getCurrentSession();
		String hqlt = "from TimeTable t where t.weekdays =:weekday and t.times =:times";
		List<TimeTable> list =  session.createQuery(hqlt).setParameter("weekday",weekDay).setParameter("times",times).getResultList();
		return list.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public void addAppointment(Appointment np) {
		Session session=factory.getCurrentSession();
		String hql="from Member m where m.memberIdNumber =:idnum";
		List<Member> list=session.createQuery(hql).setParameter("idnum",np.getPatientIdNumber()).getResultList();
		if(!list.isEmpty()) {
			np.setMemberBean(list.get(0));
		}

		session.save(np);		
	}

//	@Override
//	public void addAppointment(Clinic clinic, String item, String dentist, Date date, String time, String name,
//			String phone, String IDnum) {
//		Session session=factory.getCurrentSession();
//		@SuppressWarnings("unchecked")
//		List<Dentist> Den = session.createQuery("From Dentist d where d.clinicBean =:clinic and d.dentistName =:dentist").
//		setParameter("clinic", clinic).setParameter("dentist", dentist).getResultList();
//		
//		
//	}


}