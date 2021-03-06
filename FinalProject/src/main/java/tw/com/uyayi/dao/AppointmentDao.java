package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentDao {
   //用itemPkId/timetablePkId/ClinicPkId查出診所
   public List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
   //查出所有項目
   public List<Items> getAllItems();
   //查出所有時段
   public List<TimeTable> getTimeTable(String weekdays);
   //取得使用者選擇的診所
   public Clinic getClinicBeanByClinicPkId(Integer clinicPkId);
   //取得使用者選擇的醫生
   public Dentist getDentistBeanByDentistPkId(Integer dentistPkId);
   //取得使用者選擇的時段
   public TimeTable getTimeTableBeanByTimePkId(Integer timeTablePkId);
   //取得使用者選擇的項目
   public Items getItemsBeanByItemPkId(Integer itemPkId);
   //新增預約
   public void InsertAppointment(Appointment ap);
   //當預約的日期時間已有2人以上預約時即無法預約 
   public List<Appointment> checkFull(Dentist dentist, String timeTablePkId, String appointmentDate);
   //查詢今日以前的預約紀錄
   public List<Appointment> showAppointRecord(Integer memberPkId);
   //查詢今日以後的預約紀錄
   public List<Appointment> showAppointRecordAfterToday(Integer memberPkId);
   //修改預約狀態
   public void updateMemberReply(Integer apId);
   //用預約PkId取得預約資料
   public Appointment getAppointment(Integer AppointmentPkId);
   //判斷同一人無法預約同時段
//   public boolean checkBooked(Integer memberPkId, Integer timeTablePkId, String appointDate);

}
