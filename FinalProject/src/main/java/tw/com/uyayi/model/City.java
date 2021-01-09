package tw.com.uyayi.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="city")
public class City {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cityPkId;
	private String cityName;
	
	@OneToMany(mappedBy = "cityBean")
	private Set<Dist> dists = new LinkedHashSet<>();
	
	@OneToMany(mappedBy="cityBean")
	private Set<Clinic> clinics = new LinkedHashSet<Clinic>();

	public int getCityPkId() {
		return cityPkId;
	}

	public void setCityPkId(int cityPkId) {
		this.cityPkId = cityPkId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public Set<Dist> getDists() {
		return dists;
	}

	public void setDists(Set<Dist> dists) {
		this.dists = dists;
	}

	public Set<Clinic> getClinics() {
		return clinics;
	}

	public void setClinics(Set<Clinic> clinics) {
		this.clinics = clinics;
	}

	
	
}
