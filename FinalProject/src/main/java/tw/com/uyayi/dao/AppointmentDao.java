package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentDao {
  
   public List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
   
   public List<Clinic> getClinicByAppointment(Integer clinicdist, String appointDate, Integer timeTableId, Integer itemId);
   
   public List<Items> getAllItems();
 
   public List<TimeTable> getTimeTable(String weekdays);
   
   public void InsertAppointment(int memberPkId);
   
   public Appointment updateArrive(int memberPkId);
   
}
