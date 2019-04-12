package com.comeneat.service;

import java.util.List;

import com.comeneat.model.Advert;

public interface AdvertService {

	public List<Advert> getAdverts1(String idUser);
	public List<Advert> getAdverts2(String idUser);
	public void saveAdvert(Advert advert);
}
