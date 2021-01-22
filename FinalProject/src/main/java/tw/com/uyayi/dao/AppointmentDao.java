package tw.com.uyayi.dao;

import java.util.List;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentDao {
  
   public List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
   
   public List<Items> getAllItems();
 
   public List<TimeTable> getTimeTable(String weekdays);
   
   public Clinic getClinicBeanByClinicPkId(String clinicPkId);
   
   public Dentist getDentistBeanByDentistPkId(String dentistPkId);
   
   public TimeTable getTimeTableBeanByTimePkId(String timeTablePkId);
   
   public Items getItemsBeanByItemPkId(String itemPkId);
   
   public void InsertAppointment(Appointment ap);
   
   public Appointment updateArrive(int memberPkId);
   
}
