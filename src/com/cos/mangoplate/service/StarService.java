package com.cos.mangoplate.service;

import com.cos.mangoplate.domain.star.StarDao;
import com.cos.mangoplate.domain.star.dto.InsertReqDto;
import com.cos.mangoplate.domain.star.dto.UpdateReqDto;

public class StarService {
	
	private StarDao starDao;
	
	public StarService() {
		starDao = new StarDao();
	}
	
	public int 내용검색(int boardId) {
		return starDao.check(boardId);
	}
	
	public void 칼럼추가(InsertReqDto dto) {
		starDao.insert(dto);
	}
	
	public int 찜취소(UpdateReqDto dto) {
		return starDao.cancel(dto);
	}
	
	public int 찜하기(UpdateReqDto dto) {
		return starDao.update(dto);
	}
}
