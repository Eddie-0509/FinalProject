package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class AppointmentRecordController {

	@GetMapping(value = "/appointmentRecord")
	public String toAppointmentRecord(Model model) {
		return "member/appointmentRecord";
	}
}
