package com.comeneat.dao;

import java.util.List;

import com.comeneat.model.Advert;

public interface AdvertDAO {

	List<Advert> getAdverts(String idUser);

}
