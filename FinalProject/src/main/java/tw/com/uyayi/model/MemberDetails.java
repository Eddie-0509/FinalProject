package tw.com.uyayi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "memberDetails")
public class MemberDetails {
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="memberPkId")
	private int memberPkId;
	private String emergencyContact;
	private String emergencyNumber;
	private String emergencyRelationship;
	private String smoke;
	private String betelNut;
	private String diseases;
	private String allergy;
	private String surgery;
	
	
	public MemberDetails() {

	}



	public String getEmergencyContact() {
		return emergencyContact;
	}


	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}


	public String getEmergencyNumber() {
		return emergencyNumber;
	}


	public void setEmergencyNumber(String emergencyNumber) {
		this.emergencyNumber = emergencyNumber;
	}


	public String getEmergencyRelationship() {
		return emergencyRelationship;
	}


	public void setEmergencyRelationship(String emergencyRelationship) {
		this.emergencyRelationship = emergencyRelationship;
	}


	public String getSmoke() {
		return smoke;
	}


	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}


	public String getBetelNut() {
		return betelNut;
	}


	public void setBetelNut(String betelNut) {
		this.betelNut = betelNut;
	}


	public String getDiseases() {
		return diseases;
	}


	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}


	public String getAllergy() {
		return allergy;
	}


	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}


	public String getSurgery() {
		return surgery;
	}


	public void setSurgery(String surgery) {
		this.surgery = surgery;
	}

}
