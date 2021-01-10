package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "items")
public class Items {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer itemPkId;
	private  String itemName;
	
	@ManyToMany(mappedBy = "itemsBean", cascade = CascadeType.ALL)
	@JsonIgnore //scone+的
	private Set<Dentist> dentists;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "itemBean")
	@JsonIgnore //scone+的
	private Set<Appointment> appointments;

	public Items() {
	
	}

	public Integer getItemPkId() {
		return itemPkId;
	}

	public void setItemPkId(Integer itemPkId) {
		this.itemPkId = itemPkId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
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

	
}
