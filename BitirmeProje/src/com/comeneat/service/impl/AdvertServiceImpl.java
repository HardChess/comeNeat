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
	public List<Advert> getAdvertList() {


		return advertDAO.getAdverts();
	}

}
