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
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderDetails")
public class OrderDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderDetailPkId;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "orderPkId")
	private Orders orderBean;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "productPkId")
	private Products products;
	
	private int orderQuantity;
	
	
	public OrderDetails() {
		
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
