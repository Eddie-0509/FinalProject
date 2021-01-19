package tw.com.uyayi.model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "coupon")
public class Coupon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int couponPkId;
	private String couponName;
	private String couponContext;
	private String couponCode;
	private Date couponStartTime;
	private Date couponEndTime;
	private String couponStatus;
	
	@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "couponBean")
	private Set<Orders> orders;

	
	public Coupon() {
		
	}


	public int getCouponPkId() {
		return couponPkId;
	}


	public void setCouponPkId(int couponPkId) {
		this.couponPkId = couponPkId;
	}


	public String getCouponName() {
		return couponName;
	}


	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}


	public String getCouponContext() {
		return couponContext;
	}


	public void setCouponContext(String couponContext) {
		this.couponContext = couponContext;
	}


	public String getCouponCode() {
		return couponCode;
	}


	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}


	public Date getCouponStartTime() {
		return couponStartTime;
	}


	public void setCouponStartTime(Date couponStartTime) {
		this.couponStartTime = couponStartTime;
	}


	public Date getCouponEndTime() {
		return couponEndTime;
	}


	public void setCouponEndTime(Date couponEndTime) {
		this.couponEndTime = couponEndTime;
	}


	public String getCouponStatus() {
		return couponStatus;
	}


	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}


	public Set<Orders> getOrders() {
		return orders;
	}


	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}

}
