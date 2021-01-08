package tw.com.uyayi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "items")
public class Items {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private  Integer itemPkId;
	private  String itemName;
}
