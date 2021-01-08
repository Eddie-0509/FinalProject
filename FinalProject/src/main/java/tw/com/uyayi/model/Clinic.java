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



@Entity
@Table(name="clinic")
public class Clinic {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int clinicPkId;
	private String clinicAccount;
	private String clinicPwd;
	private String clinicName;
	private String clinicPhone;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="clinicCity")
	private City cityBean;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="clinicDist")
	private Dist distBean;
	
	private String clinicAddress;
	private String clinicLocation;
	private Date clinicStartTime;
	private Date clinicEndTime;
	private String clinicStatus;
	
	
	public Clinic() {
		
	}
	
	public Clinic(int clinicPkId, String clinicAccount, String clinicPwd, String clinicName, String clinicPhone,
			City cityBean, Dist distBean, String clinicAddress, Date clinicStartTime, Date clinicEndTime,
			String clinicStatus) {
		this.clinicPkId = clinicPkId;
		this.clinicAccount = clinicAccount;
		this.clinicPwd = clinicPwd;
		this.clinicName = clinicName;
		this.clinicPhone = clinicPhone;
		this.cityBean = cityBean;
		this.distBean = distBean;
		this.clinicAddress = clinicAddress;
		this.clinicStartTime = clinicStartTime;
		this.clinicEndTime = clinicEndTime;
		this.clinicStatus = clinicStatus;
	}
	public int getClinicPkId() {
		return clinicPkId;
	}
	public void setClinicPkId(int clinicPkId) {
		this.clinicPkId = clinicPkId;
	}
	public String getClinicAccount() {
		return clinicAccount;
	}
	public void setClinicAccount(String clinicAccount) {
		this.clinicAccount = clinicAccount;
	}
	public String getClinicPwd() {
		return clinicPwd;
	}
	public void setClinicPwd(String clinicPwd) {
		this.clinicPwd = clinicPwd;
	}
	public String getClinicName() {
		return clinicName;
	}
	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}
	public String getClinicPhone() {
		return clinicPhone;
	}
	public void setClinicPhone(String clinicPhone) {
		this.clinicPhone = clinicPhone;
	}
	public City getCityBean() {
		return cityBean;
	}
	public void setCityBean(City cityBean) {
		this.cityBean = cityBean;
	}
	public Dist getDistBean() {
		return distBean;
	}
	public void setDistBean(Dist distBean) {
		this.distBean = distBean;
	}
	public String getClinicAddress() {
		return clinicAddress;
	}
	public void setClinicAddress(String clinicAddress) {
		this.clinicAddress = clinicAddress;
	}
	
	public String getClinicLocation() {
		return clinicLocation;
	}

	public void setClinicLocation(String clinicLocation) {
		this.clinicLocation = clinicLocation;
	}

	public Date getClinicStartTime() {
		return clinicStartTime;
	}
	public void setClinicStartTime(Date clinicStartTime) {
		this.clinicStartTime = clinicStartTime;
	}
	public Date getClinicEndTime() {
		return clinicEndTime;
	}
	public void setClinicEndTime(Date clinicEndTime) {
		this.clinicEndTime = clinicEndTime;
	}
	public String getClinicStatus() {
		return clinicStatus;
	}
	public void setClinicStatus(String clinicStatus) {
		this.clinicStatus = clinicStatus;
	}

}