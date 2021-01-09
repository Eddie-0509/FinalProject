package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderPkId;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "memberPkId")
	private Member memberBean;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "couponPkId")
	private Coupon conponBean;
	
	private int totalPayment;
	private String orderStatus;
	private String shipAddress;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "orderBean")
	private Set<OrderDetails> orderDetails;

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

	public Coupon getConponBean() {
		return conponBean;
	}

	public void setConponBean(Coupon conponBean) {
		this.conponBean = conponBean;
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

}
