package test;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.LinkedList;

public class DateTest {

	public static void main(String[] args) {
		long millis=System.currentTimeMillis(); 
		Date date=new Date(millis);//取時間
		Calendar calendar = new GregorianCalendar();
		LinkedList<String> datelist =new LinkedList<String>();
	      for(int i=0;i<=90;i++) {
	    	  calendar.setTime(date);
		      calendar.add(calendar.DATE,+i);//把日期往前減少一天，若想把日期向後推一天則將負數改為正數
		      Date date2=new Date(calendar.getTimeInMillis()); 
		     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		     String dateString = formatter.format(date2);
		     datelist.add(dateString);
		     System.out.println(datelist);
	      }
	}

}
