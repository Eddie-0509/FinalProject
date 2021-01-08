package tw.com.uyayi.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "appointment")
public class Appointment {
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "Appointmentmember")
	private  Integer memberPkId;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "Appointmentclinic")
    private  Integer clinicPkId;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "Appointmentdentist")
    private  Integer dentistPkId;
    
	private  String patientName;
	private  String patientIdNumber;
	private  String patientPhone;
	private  Date  appointDate;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "AppointmenttimeTable")
	private  Integer timeTablePkId;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "Appointmentitem")
	private  Integer itemPkId; 
	private  String arrive;
	private  String memberReply;
	
	public Appointment() {
		
	}
	
	public Integer getMemberPkId() {
		return memberPkId;
	}
	public void setMemberPkId(Integer memberPkId) {
		this.memberPkId = memberPkId;
	}
	public Integer getClinicPkId() {
		return clinicPkId;
	}
	public void setClinicPkId(Integer clinicPkId) {
		this.clinicPkId = clinicPkId;
	}
	public Integer getDentistPkId() {
		return dentistPkId;
	}
	public void setDentistPkId(Integer dentistPkId) {
		this.dentistPkId = dentistPkId;
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
	public Integer getTimeTablePkId() {
		return timeTablePkId;
	}
	public void setTimeTablePkId(Integer timeTablePkId) {
		this.timeTablePkId = timeTablePkId;
	}
	public Integer getItemPkId() {
		return itemPkId;
	}
	public void setItemPkId(Integer itemPkId) {
		this.itemPkId = itemPkId;
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
