package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.Appointment;

public interface LineBotService {

	boolean checkUserId(String userId);

	boolean updateMemberLineId(String userId, String lineText);

	List<Appointment> getAppointment(String userId);

}
