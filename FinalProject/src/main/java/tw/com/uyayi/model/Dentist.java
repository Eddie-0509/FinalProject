package tw.com.uyayi.model;

import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "dentist")
public class Dentist {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dentistPkId;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "clinicPkId")
	private Clinic clinicBean;
	
	private String dentistName;
	
	private String dentistImage;
	
	private String dentistGender;
	
	
	@OneToMany(cascade = CascadeType.MERGE, mappedBy="dentistBean")
	@JsonIgnore
	private Set<Appointment> appointments;
	
	@ManyToMany(cascade=CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinTable(
        name="dentistTime",
        joinColumns={@JoinColumn(name="dentistPkId")},
        inverseJoinColumns={@JoinColumn(name="timeTablePkId")}
    )
	private Set<TimeTable> timeTables;
	
	@ManyToMany(cascade=CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinTable(
        name="dentistItem",
        joinColumns={@JoinColumn(name="dentistPkId")},
        inverseJoinColumns={@JoinColumn(name="itemPkId")}
    )
	private Set<Items> itemsBean = new LinkedHashSet<Items>();
	
	@Transient
	private String[] timeCheckBox;
	@Transient
	private String[] itemCheckBox;
	
	public Dentist() {
		
	}



	public int getDentistPkId() {
		return dentistPkId;
	}



	public void setDentistPkId(int dentistPkId) {
		this.dentistPkId = dentistPkId;
	}



	public Clinic getClinicBean() {
		return clinicBean;
	}



	public void setClinicBean(Clinic clinicBean) {
		this.clinicBean = clinicBean;
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



	public String[] getTimeCheckBox() {
		return timeCheckBox;
	}



	public void setTimeCheckBox(String[] timeCheckBox) {
		this.timeCheckBox = timeCheckBox;
	}



	public String[] getItemCheckBox() {
		return itemCheckBox;
	}



	public void setItemCheckBox(String[] itemCheckBox) {
		this.itemCheckBox = itemCheckBox;
	}

}
