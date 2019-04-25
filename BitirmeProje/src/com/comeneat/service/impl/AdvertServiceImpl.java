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
	@Override
	@Transactional
	public void saveAdvert(Advert advert, String idUser, String name) {

		advertDAO.saveAdvert(advert, idUser, name); 
		
	}
	@Override
	@Transactional
	public Advert getAdvertById(int idAdvert) {

		return advertDAO.getAdvertById(idAdvert);
	}
	@Override
	@Transactional
	public List<Advert> getUserAdverts(String idUser) {

		return advertDAO.getUserAdverts(idUser);
		
	}
	@Override
	@Transactional
	public List<Integer> getAdvertIds(String idUser) {

		return advertDAO.getAdvertIds(idUser);
	}
}
