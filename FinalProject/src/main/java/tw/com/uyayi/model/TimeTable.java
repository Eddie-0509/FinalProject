package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="timeTable")
public class TimeTable {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer timeTablePkId;
	
	private String weekdays;
	
	private String times;
	
	private String timeInterval;
	
	@ManyToMany(mappedBy = "timeTables",cascade = CascadeType.ALL)
	@JsonIgnore //scone加ㄉ
	private Set<Dentist> dentists;
	
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "timeTableBean")
	@JsonIgnore
	private Set<Appointment> appointments;
	
	public TimeTable() {
		
	}
	
	
	public Integer getTimeTablePkId() {
		return timeTablePkId;
	}

	public void setTimeTablePkId(Integer timeTablePkId) {
		this.timeTablePkId = timeTablePkId;
	}

	public String getWeekdays() {
		return weekdays;
	}

	public void setWeekdays(String weekdays) {
		this.weekdays = weekdays;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}


	public Set<Dentist> getDentists() {
		return dentists;
	}


	public void setDentists(Set<Dentist> dentists) {
		this.dentists = dentists;
	}


	public Set<Appointment> getAppointments() {
		return appointments;
	}


	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}
	

	public String getTimeInterval() {
		return timeInterval;
	}


	public void setTimeInterval(String timeInterval) {
		this.timeInterval = timeInterval;
	}

	


	
}
