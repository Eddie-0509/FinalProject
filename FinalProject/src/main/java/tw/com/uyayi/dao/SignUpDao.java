package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Dist;

public interface SignUpDao {

	List<City> getAllCity();
	
	List<Dist> getDist(int cityPkId);

}
