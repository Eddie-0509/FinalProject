package tw.com.uyayi.model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "orders")
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderPkId;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "memberPkId")
	private Member memberBean;

	private String orderNo;
	private Date orderDate;
	private int totalPayment;
	private String receiver;
	private String mobilephone;
	private String shipAddress;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "couponPkId")
	private Coupon couponBean;

	private String orderStatus;
	private String returnReason;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "orderBean", fetch = FetchType.EAGER)
	private Set<OrderDetails> orderDetails;

	@Transient
	private String products;

	@Transient
	private String quantity;
	
	@Transient
	private String couponId;

	public Orders() {

	}

	public int getOrderPkId() {
		return orderPkId;
	}

	public void setOrderPkId(int orderPkId) {
		this.orderPkId = orderPkId;
	}

	public Member getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(Member memberBean) {
		this.memberBean = memberBean;
	}

	public Coupon getCouponBean() {
		return couponBean;
	}

	public void setCouponBean(Coupon couponBean) {
		this.couponBean = couponBean;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public Set<OrderDetails> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Set<OrderDetails> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public String getMobilephone() {
		return mobilephone;
	}

	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getproducts() {
		return products;
	}

	public void setproducts(String products) {
		this.products = products;
	}

	public String getquantity() {
		return quantity;
	}

	public void setquantity(String quantity) {
		this.quantity = quantity;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getReturnReason() {
		return returnReason;
	}

	public void setReturnReason(String returnReason) {
		this.returnReason = returnReason;
	}

	public String getCouponId() {
		return couponId;
	}

	public void setCouponId(String couponId) {
		this.couponId = couponId;
	}
}
