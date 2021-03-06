package tw.com.uyayi.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "memberDetails")
public class MemberDetails {
	
	@Id
	private int memberPkId;
	
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "memberPkId")
    @MapsId    
    private Member member;
	
	private String emergencyContact;
	private String emergencyNumber;
	private String emergencyRelationship;
	private String smoke;
	private String betelNut;
	private String diseases;
	private String allergy;
	private String surgery;
	
	
	public int getMemberPkId() {
		return memberPkId;
	}



	public void setMemberPkId(int memberPkId) {
		this.memberPkId = memberPkId;
	}






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



	public Member getMember() {
		return member;
	}



	public void setMember(Member member) {
		this.member = member;
	}



	

}
