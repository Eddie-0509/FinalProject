package tw.com.uyayi.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.ColumnDefault;

@Entity
@Table(name = "appointment")
public class Appointment {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer appointmentPkId;
	
	
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "memberPkId")
//    @JsonIgnore
	private  Member memberBean;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "clinicPkId")
//    @JsonIgnore
    private  Clinic clinicBean;
    
    @ManyToOne(cascade=CascadeType.MERGE)
    @JoinColumn(name = "dentistPkId")
//    @JsonIgnore
    private  Dentist dentistBean;
    
	private  String patientName;
	private  String patientIdNumber;
	private  String patientPhone;
	
	private  Date  appointDate;
	
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name = "timeTablePkId")
//	@JsonIgnore
	private  TimeTable timeTableBean;
	
	
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name = "itemPkId")
//	@JsonIgnore
	private  Items itemBean;
	
	
	@Column(name = "memberReply", insertable=false,columnDefinition = " nvarchar(15) default '未回覆'") 
	private  String memberReply;
	@Column(name = "arrive", insertable=false,columnDefinition = " nvarchar(10) default 'true'") 
	private  String arrive;
	
	@Transient
	private String dentistName;
	@Transient
	private String itemName;
	@Transient
	private String times;
	@Transient
	private String clinicId;
	@Transient
	private String itemId;

	@Transient
	private String dentistId;
	@Transient
	private String appointdateId;
	@Transient
	private String timetableId;
	@Transient
	private String memberId;
	
	public Appointment() {
		
	}

	public Integer getAppointmentPkId() {
		return appointmentPkId;
	}

	public void setAppointmentPkId(Integer appointmentPkId) {
		this.appointmentPkId = appointmentPkId;
	}

	public Member getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(Member memberBean) {
		this.memberBean = memberBean;
	}

	public Clinic getClinicBean() {
		return clinicBean;
	}

	public void setClinicBean(Clinic clinicBean) {
		this.clinicBean = clinicBean;
	}

	public Dentist getDentistBean() {
		return dentistBean;
	}

	public void setDentistBean(Dentist dentistBean) {
		this.dentistBean = dentistBean;
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

	public TimeTable getTimeTableBean() {
		return timeTableBean;
	}

	public void setTimeTableBean(TimeTable timeTableBean) {
		this.timeTableBean = timeTableBean;
	}

	public Items getItemBean() {
		return itemBean;
	}

	public void setItemBean(Items itemBean) {
		this.itemBean = itemBean;
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

	public String getDentistName() {
		return dentistName;
	}

	public void setDentistName(String dentistName) {
		this.dentistName = dentistName;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}
	public String getClinicId() {
		return clinicId;
	}
	
	public void setClinicId(String clinicId) {
		this.clinicId = clinicId;
	}
	
	public String getDentistId() {
		return dentistId;
	}
	
	public void setDentistId(String dentistId) {
		this.dentistId = dentistId;
	}
	
	public String getAppointdateId() {
		return appointdateId;
	}
	
	public void setAppointdateId(String appointdateId) {
		this.appointdateId = appointdateId;
	}
	
	public String getTimetableId() {
		return timetableId;
	}
	
	public void setTimetableId(String timetableId) {
		this.timetableId = timetableId;
	}
	
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getItemId() {
		return itemId;
	}
	
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
}
