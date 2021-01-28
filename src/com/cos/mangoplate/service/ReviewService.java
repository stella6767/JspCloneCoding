package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.review.ReviewDao;
import com.cos.mangoplate.domain.review.dto.SaveRespDto;
import com.cos.mangoplate.domain.review.dto.TestReviewDto;

public class ReviewService {
	
	private ReviewDao reviewDao;
	
	public ReviewService() {
		reviewDao = new ReviewDao();
	}
	
	public List<SaveRespDto> 리뷰목록보기(int boardId){
		return 	reviewDao.findAll(boardId);	
	}
	
	public int 리뷰작성(SaveRespDto dto) {
		return reviewDao.save(dto);		
	}
	
}
