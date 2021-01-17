package tw.com.uyayi.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;

import tw.com.uyayi.model.Appointment;


//應該是日期由大到小排列的方法 https://www.itread01.com/content/1544321896.html
public class ComparatorDate implements Comparator<Appointment> {
    public static final String TAG = "ComparatorDate";


    SimpleDateFormat format = new SimpleDateFormat("yyyy/M/d H:mm:ss");

    public int compare(Appointment a1,Appointment a2) {
//    	Appointment a1 = ;
//        Trade t2 = (Trade) obj2;
     //   return t1.getTradetime().compareTo(t2.getTradetime());  // 時間格式不好，不然可以直接這樣比較
        Date d1, d2;
        
            d1 = a1.getAppointDate();
            d2 = a2.getAppointDate();
      
        if (d1.before(d2)) {
            return 1;
        } else {
            return -1;
        }
    }
    
}