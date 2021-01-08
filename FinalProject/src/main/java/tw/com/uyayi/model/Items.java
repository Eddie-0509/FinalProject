package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "items")
public class Items {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer itemPkId;
	private  String itemName;
	
	@ManyToMany(mappedBy = "itemsBean", cascade = CascadeType.ALL)
	private Set<Dentist> dentists;
	
	

	public Items() {
	
	}

	public Integer getItemPkId() {
		return itemPkId;
	}

	public void setItemPkId(Integer itemPkId) {
		this.itemPkId = itemPkId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public Set<Dentist> getDentists() {
		return dentists;
	}

	public void setDentists(Set<Dentist> dentists) {
		this.dentists = dentists;
	}

	
}
