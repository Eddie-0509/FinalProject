package tw.com.uyayi.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "appointment")
public class Appointment {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer appointmentPkId;
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "memberPkId")
    @JsonIgnore
	private  Member member;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "clinicPkId")
    @JsonIgnore
    private  Clinic clinic;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "dentistPkId")
    @JsonIgnore
    private  Dentist dentist;
    
	private  String patientName;
	private  String patientIdNumber;
	private  String patientPhone;
	private  Date  appointDate;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "timeTablePkId")
	@JsonIgnore
	private  TimeTable timeTable;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "itemPkId")
	@JsonIgnore
	private  Item item; 
	private  String arrive;
	private  String memberReply;
	
	public Appointment() {
		
	}
	

	public Integer getAppointmentPkId() {
		return appointmentPkId;
	}


	public void setAppointmentPkId(Integer appointmentPkId) {
		this.appointmentPkId = appointmentPkId;
	}


	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	public Clinic getClinic() {
		return clinic;
	}


	public void setClinic(Clinic clinic) {
		this.clinic = clinic;
	}


	public Dentist getDentist() {
		return dentist;
	}


	public void setDentist(Dentist dentist) {
		this.dentist = dentist;
	}


	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getPatientIdNumber() {
		return patientIdNumber;
	}
	public void setPatientIdNumber(String patientIdNumber) {
		this.patientIdNumber = patientIdNumber;
	}
	public String getPatientPhone() {
		return patientPhone;
	}
	public void setPatientPhone(String patientPhone) {
		this.patientPhone = patientPhone;
	}
	public Date getAppointDate() {
		return appointDate;
	}
	public void setAppointDate(Date appointDate) {
		this.appointDate = appointDate;
	}

	public TimeTable getTimeTable() {
		return timeTable;
	}


	public void setTimeTable(TimeTable timeTable) {
		this.timeTable = timeTable;
	}


	public Item getItem() {
		return item;
	}


	public void setItem(Item item) {
		this.item = item;
	}


	public String getArrive() {
		return arrive;
	}
	public void setArrive(String arrive) {
		this.arrive = arrive;
	}
	public String getMemberReply() {
		return memberReply;
	}
	public void setMemberReply(String memberReply) {
		this.memberReply = memberReply;
	}
	
	
}
