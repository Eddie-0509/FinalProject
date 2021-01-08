package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="timeTable")
public class TimeTable {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer timeTablePkId;
	
	private String weekdays;
	
	private String times;
	
	@OneToMany(mappedBy = "timeTableBean")
	private Set<DentistTime> dentistTimes;
	
	
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

	public Set<DentistTime> getDentistTimes() {
		return dentistTimes;
	}

	public void setDentistTimes(Set<DentistTime> dentistTimes) {
		this.dentistTimes = dentistTimes;
	}


	
}
