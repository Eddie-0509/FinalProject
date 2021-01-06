package tw.com.uyayi.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name = "Orders")
public class Orders {
	private int orderPkId;
	private int memeberPkId;
	private int couponPkId;
	private int totalPayment;
	private String orderStatus;
	private String shipAddress;

	public Orders() {
	}

	public int getOrderPkId() {
		return orderPkId;
	}

	public void setOrderPkId(int orderPkId) {
		this.orderPkId = orderPkId;
	}

	public int getMemeberPkId() {
		return memeberPkId;
	}

	public void setMemeberPkId(int memeberPkId) {
		this.memeberPkId = memeberPkId;
	}

	public int getCouponPkId() {
		return couponPkId;
	}

	public void setCouponPkId(int couponPkId) {
		this.couponPkId = couponPkId;
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
}
