package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Appointment;

public interface LineBotDao {

	boolean checkUserId(String userId);

	boolean updateMemberLineId(String userId, String lineText);

	List<Appointment> getAppointment(String userId);

}
