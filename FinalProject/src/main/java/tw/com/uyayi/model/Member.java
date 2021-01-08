package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "member")
public class Member {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memberPkId ;
	private String memberAccount;
	private String memberPwd;
	private String memberIdNumber;
	private String memberName;
	private String memberAddress;
	private String memberPhone;
	private String memberStatus;
	
	@OneToMany(mappedBy = "memberBean" )
	private Set<Appointment> appointments;
	
	
	@Id @Column(name = "memberPkId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getMemberPkId() {
		return memberPkId;
	}
	
	public void setMemberPkId(int memberPkId) {
		this.memberPkId = memberPkId;
	}
	
	@Column(name = "memberAccount")
	public String getMemberAccount() {
		return memberAccount;
	}
	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}
	
	@Column(name = "memberPwd")
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	
	@Column(name = "memberIdNumber")
	public String getMemberIdNumber() {
		return memberIdNumber;
	}
	public void setMemberIdNumber(String memberIdNumber) {
		this.memberIdNumber = memberIdNumber;
	}
	
	@Column(name = "memberName")
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	@Column(name = "memberAddress")
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	
	@Column(name = "memberPhone")
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
	@Column(name = "memberStatus")
	public String getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}
	
	
	
}


