 package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
@Table(name = "member")
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "memberPkId")
	private int memberPkId;
	private String memberAccount;
	private String memberPwd;
	private String memberIdNumber;
	private String memberName;
	private String memberAddress;
	private String memberPhone;
	private String memberStatus;
	
	
	@JsonIgnore
	@OneToMany(cascade=CascadeType.ALL, mappedBy = "memberBean")
	private Set<Appointment> appointments;
	
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy = "memberBean")
	@JsonIgnore //SC加ㄉ
	private Set<Orders> orders;

//	
//	@OneToOne(fetch = FetchType.EAGER, mappedBy = "memberDetails" ,cascade = CascadeType.ALL)
//	private MemberDetails memberDetails;
	 
	
	
	public Member() {
		super();
	}

//	public MemberDetails getMemberDetails() {
//		return memberDetails;
//	}
//
//	public void setMemberDetails(MemberDetails memberDetails) {
//		this.memberDetails = memberDetails;
//	}

	public int getMemberPkId() {
		return memberPkId;
	}
	
	public void setMemberPkId(int memberPkId) {
		this.memberPkId = memberPkId;
	}
	
	public String getMemberAccount() {
		return memberAccount;
	}
	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}
	
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	

	public String getMemberIdNumber() {
		return memberIdNumber;
	}
	public void setMemberIdNumber(String memberIdNumber) {
		this.memberIdNumber = memberIdNumber;
	}
	

	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
	public String getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	public Set<Appointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}

	public Set<Orders> getOrders() {
		return orders;
	}

	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	
	
	
}


