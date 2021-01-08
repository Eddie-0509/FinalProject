package tw.com.uyayi.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "dentistTime")
public class DentistTime {
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "dentistPkId")
	private Dentist dentistBean;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "timeTablePkId")
	private TimeTable timeTableBean;
	
	
	public DentistTime() {
	}


	public Dentist getDentistBean() {
		return dentistBean;
	}


	public void setDentistBean(Dentist dentistBean) {
		this.dentistBean = dentistBean;
	}


	public TimeTable getTimeTableBean() {
		return timeTableBean;
	}


	public void setTimeTableBean(TimeTable timeTableBean) {
		this.timeTableBean = timeTableBean;
	}

}
