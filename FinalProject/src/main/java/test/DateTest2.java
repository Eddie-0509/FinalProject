package test;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

public class DateTest2 {

	public static void main(String[] args) {
		java.util.Date today = new java.util.Date();

		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		String dateString = formatter.format(today);
		System.out.println(dateString);

        int number = 101;
        String id = String.format("%04d", number);
        System.out.println(id);

		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyyMMdd");
		
		String odate = formatter1.format(today);
		String ndate = formatter2.format(today);
		System.out.println(odate);
		System.out.println(ndate);
	}

}
