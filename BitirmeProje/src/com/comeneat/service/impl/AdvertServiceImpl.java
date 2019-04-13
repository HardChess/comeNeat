package com.comeneat.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comeneat.dao.AdvertDAO;
import com.comeneat.model.Advert;
import com.comeneat.service.AdvertService;

@Service("advertService")
public class AdvertServiceImpl implements AdvertService {

	@Autowired
	private AdvertDAO advertDAO;
	
	@Override
	@Transactional
	public List<Advert> getAdverts1(String idUser) {
		// TODO Auto-generated method stub
		return advertDAO.getAdvertsBuy(idUser);
	}
	@Override
	@Transactional	 
	public List<Advert> getAdverts2(String idUser) {
		// TODO Auto-generated method stub
		return advertDAO.getAdvertsSell(idUser);
	}
	
	
	@Transactional
	@Override
	public void saveAdvert(Advert advert, String idUser) {
		advertDAO.saveAdvert(advert, idUser); 
		
	}
	@Override
	@Transactional
	public Advert getAdverts(int theId) {
			return advertDAO.getAdvertsSell(theId);
	}
	@Override
	@Transactional
	public void deleteAdvert(int theId) {
		advertDAO.deleteAdvert(theId);
	}
}
