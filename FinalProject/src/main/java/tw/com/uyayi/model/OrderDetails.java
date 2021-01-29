package tw.com.uyayi.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "orderDetails")
public class OrderDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderDetailPkId;
	
	@JsonIgnore
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "orderPkId")
	private Orders orderBean;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "productPkId", referencedColumnName = "productPkId")
	private Products productBean;

	private int orderQuantity;

	public OrderDetails() {
		
	}
	
	public Products getProductBean() {
		return productBean;
	}

	public void setProductBean(Products productBean) {
		this.productBean = productBean;
	}

	public int getOrderDetailPkId() {
		return orderDetailPkId;
	}

	public void setOrderDetailPkId(int orderDetailPkId) {
		this.orderDetailPkId = orderDetailPkId;
	}

	public Orders getOrderBean() {
		return orderBean;
	}

	public void setOrderBean(Orders orderBean) {
		this.orderBean = orderBean;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

}
