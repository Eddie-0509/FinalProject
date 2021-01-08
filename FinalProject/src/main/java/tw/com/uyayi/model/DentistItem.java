package tw.com.uyayi.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "dentistItem")
public class DentistItem {
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "dentistPkId")
	private Dentist dentistBean;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "itemPkId")
	private Items itemsBean;
	
	public DentistItem() {
	}

	public Dentist getDentistBean() {
		return dentistBean;
	}

	public void setDentistBean(Dentist dentistBean) {
		this.dentistBean = dentistBean;
	}

	public Items getItemsBean() {
		return itemsBean;
	}

	public void setItemsBean(Items itemsBean) {
		this.itemsBean = itemsBean;
	}

}
