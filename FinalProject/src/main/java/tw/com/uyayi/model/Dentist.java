package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "dentist")
public class Dentist {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dentistPkId;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "clinicPkId")
	private Clinic clinic;
	
	private String dentistName;
	
	private String dentistImage;
	
	private String dentistGender;
	
	
	@OneToMany(mappedBy="dentistBean")
	private Set<Appointment> appointments;
	
	
	@ManyToMany(cascade=CascadeType.ALL)
    @JoinTable(
        name="dentistTime",
        joinColumns={@JoinColumn(name="dentistPkId")},
        inverseJoinColumns={@JoinColumn(name="timeTablePkId")}
    )
	private Set<TimeTable> timeTables;
	
	@ManyToMany(cascade=CascadeType.ALL)
    @JoinTable(
        name="dentistItem",
        joinColumns={@JoinColumn(name="dentistPkId")},
        inverseJoinColumns={@JoinColumn(name="itemPkId")}
    )
	private Set<Items> itemsBean;
	
	public Dentist() {
		
	}



	public int getDentistPkId() {
		return dentistPkId;
	}



	public void setDentistPkId(int dentistPkId) {
		this.dentistPkId = dentistPkId;
	}



	public Clinic getClinic() {
		return clinic;
	}



	public void setClinic(Clinic clinic) {
		this.clinic = clinic;
	}



	public String getDentistName() {
		return dentistName;
	}



	public void setDentistName(String dentistName) {
		this.dentistName = dentistName;
	}



	public String getDentistImage() {
		return dentistImage;
	}



	public void setDentistImage(String dentistImage) {
		this.dentistImage = dentistImage;
	}



	public String getDentistGender() {
		return dentistGender;
	}



	public void setDentistGender(String dentistGender) {
		this.dentistGender = dentistGender;
	}



	public Set<Appointment> getAppointments() {
		return appointments;
	}



	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}



	public Set<TimeTable> getTimeTables() {
		return timeTables;
	}



	public void setTimeTables(Set<TimeTable> timeTables) {
		this.timeTables = timeTables;
	}



	public Set<Items> getItemsBean() {
		return itemsBean;
	}



	public void setItemsBean(Set<Items> itemsBean) {
		this.itemsBean = itemsBean;
	}

}
