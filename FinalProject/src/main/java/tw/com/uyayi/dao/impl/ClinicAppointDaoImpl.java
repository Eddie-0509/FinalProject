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

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Appointment;
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

	@SuppressWarnings("unlikely-arg-type")
	@Override
	public LinkedHashMap<String, ArrayList<String>> getAppointable(Clinic clinic,
			String item, String dentist, String timeInterval) {
		Set<Dentist> den = clinic.getDentists();
		Iterator<Dentist> denitr = den.iterator();
		Set<Appointment> app = clinic.getAppointments();
		Iterator<Appointment> appitr = app.iterator();
		int weekDay = 0;
		long millis=System.currentTimeMillis(); 
		Date date=new Date(millis);//取時間
		Calendar calendar = new GregorianCalendar();
				
		LinkedHashMap<String, ArrayList<String>> appointable=new LinkedHashMap<String, ArrayList<String>>();
		//找每個醫生跟選擇時間段的所有時間
		while (denitr.hasNext()) {
			Dentist bean=denitr.next();
			String name=bean.getDentistName();
			List<TimeTable> interval = bean.getTimeTables().stream().filter(a -> a.getTimeInterval().equals(timeInterval)).collect(Collectors.toList());
			Collections.sort(interval, new Comparator<TimeTable>() {
                public int compare(final TimeTable object1, final TimeTable object2) {
                    return object1.getTimes().compareToIgnoreCase(object2.getTimes());
                }
            });
			//找到想預約的醫生
		    if(name.equals(dentist)) {
			   System.out.println("名字："+name);
			   //把該醫生該時間段的內容存成MAP
			   LinkedHashMap<String,ArrayList<String>> weekDayTimeMap = new LinkedHashMap<String,ArrayList<String>>();
			   ArrayList<String> sunDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> monDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> tueDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> wedDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> thuDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> friDayTimeMapList=new ArrayList<String>();
			   ArrayList<String> satDayTimeMapList=new ArrayList<String>();
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
			   System.out.println("weekDayTimeMap："+weekDayTimeMap);
				   //生成90天內的日期清單
			   for(int r=0;r<=90;r++) {
			    	  calendar.setTime(date);
				      calendar.add(calendar.DATE,+r);//把日期往前減少一天，若想把日期向後推一天則將負數改為正數
				      Date date2=new Date(calendar.getTimeInMillis()); 
				      int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
				      SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
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
				      System.out.println("dateString:"+dateString);
				      System.out.println("dayTimeTable:"+weekDayTimeMap.get(key));
			    	  appointable.put(dateString,weekDayTimeMap.get(key));
			    	  
			      }
			      //如果已經有預約，把它刪除
		    	  Session session = factory.getCurrentSession();
    		      String apphql = "From Appointment a where a.dentistBean =:dentist and a.appointDate =:appointDate and a.timeTableBean =:timeTable";
			      String tthql = "From TimeTable tt where tt.weekdays =:weekdays and tt.times =:times";
			      for(int a=0;a<weekDayTimeMap.get(key).size();a++) {
				      List ttlist = session.createQuery(tthql).setParameter("weekdays", key).setParameter("times", weekDayTimeMap.get(key).get(a)).getResultList();
	    		      @SuppressWarnings("unchecked")
					List<Appointment> apped = session.createQuery(apphql).setParameter("dentist", bean)
				      	.setParameter("appointDate", date2).setParameter("timeTable", ttlist.get(0)).getResultList();
	    		      	if(!apped.isEmpty()) {
	    		      		System.out.println(apped);
	    		      		System.out.println(dateString+" "+formatter.format(apped.get(0).getAppointDate()));
	    		      		if(dateString.equals(formatter.format(apped.get(0).getAppointDate())) ){
		    		      		System.out.println("一樣RRRRRRRRRRR");
	    		      			appointable.get(formatter.format(apped.get(0).getAppointDate())).remove(weekDayTimeMap.get(key).get(a));
	    		      		} 
	    		      	}
			      }
			   }   
		    }
		}
		    
		}

		System.err.println(appointable);
		return appointable;
	}


}