package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Dist;

public interface SignUpService {
	
	List<City> getAllCity();
	
	List<Dist> getDist(int cityPkId);
}
