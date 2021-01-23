package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.matzip.Item;
import com.cos.mangoplate.domain.matzip.matzipDao;

public class matzipService {
	
	private matzipDao matzipDao;
	
	public matzipService() {
		matzipDao = new matzipDao();
	}
	
	public void 데이터입력(List<Item> items) {
		matzipDao.insertALL(items);
		
	}
	
}
