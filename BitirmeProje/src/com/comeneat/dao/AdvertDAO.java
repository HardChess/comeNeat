package com.comeneat.dao;

import java.util.List;

import com.comeneat.model.Advert;

public interface AdvertDAO {

	List<Advert> getAdvertsBuy(String idUser);
	List<Advert> getAdvertsSell(String idUser);
	
	public void saveAdvert(Advert advert);
}
