package com.cos.mangoplate.service;

import com.cos.mangoplate.domain.star.StarDao;
import com.cos.mangoplate.domain.star.dto.SaveReqDto;

public class StarService {
	
	private StarDao starDao;
	
	public StarService() {
		starDao = new StarDao();
	}
	
	public int 찜취소(SaveReqDto dto) {
		return starDao.delete(dto);
	}
	
	public int 찜하기(SaveReqDto dto) {
		return starDao.save(dto);
	}
}
