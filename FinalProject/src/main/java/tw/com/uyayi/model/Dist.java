package tw.com.uyayi.model;

import java.util.LinkedHashSet;
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
@Table(name="dist")
public class Dist {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int distPkId;
	private String distName;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cityPkId")
	private City cityBean;
	
	@OneToMany(mappedBy="distBean")
	private Set<Clinic> clinics = new LinkedHashSet<Clinic>();
	
	
	
	public int getDistPkId() {
		return distPkId;
	}

	public void setDistPkId(int distPkId) {
		this.distPkId = distPkId;
	}

	public String getDistName() {
		return distName;
	}

	public void setDistName(String distName) {
		this.distName = distName;
	}

	public City getCityBean() {
		return cityBean;
	}

	public void setCityBean(City cityBean) {
		this.cityBean = cityBean;
	}

	public Set<Clinic> getClinics() {
		return clinics;
	}

	public void setClinics(Set<Clinic> clinics) {
		this.clinics = clinics;
	}
	
	
}
