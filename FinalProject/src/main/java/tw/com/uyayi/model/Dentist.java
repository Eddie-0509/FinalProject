package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
	
	private String DentistName;
	
	private String DentistImage;
	
	private String DentistGender;
	
	
	@OneToMany(mappedBy="dentistBean")
	private Set<Appointment> appointments;
	
	
	
	
	public Dentist() {
		
	}

}
