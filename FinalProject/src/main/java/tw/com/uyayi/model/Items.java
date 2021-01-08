package tw.com.uyayi.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "items")
public class Items {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer itemPkId;
	private  String itemName;
	
	@OneToMany(mappedBy = "itemsBean")
	private Set<DentistItem> dentistItems;
	
	

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

	public Set<DentistItem> getDentistItems() {
		return dentistItems;
	}

	public void setDentistItems(Set<DentistItem> dentistItems) {
		this.dentistItems = dentistItems;
	}
}
