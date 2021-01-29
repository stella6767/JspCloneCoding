package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.review.ReviewDao;
import com.cos.mangoplate.domain.review.dto.SaveReqDto;
import com.cos.mangoplate.domain.review.dto.SaveRespDto;
import com.cos.mangoplate.domain.review.dto.TestReviewDto;
import com.cos.mangoplate.domain.review.dto.UpdateReqDto;

public class ReviewService {
	
	private ReviewDao reviewDao;
	
	public ReviewService() {
		reviewDao = new ReviewDao();
	}
	
	public List<SaveRespDto> 목록더보기(int boardId, int startNum){
		return reviewDao.moreList(boardId, startNum);
	}
	
	public int 리뷰수정(UpdateReqDto dto) {	
		return reviewDao.update(dto);	
	}
	
	public SaveRespDto 리뷰상세보기(int id) {
		return reviewDao.findById(id);
	}
	
	public int 리뷰삭제(int id) {
		return reviewDao.deleteById(id);
	}
	
	public List<SaveRespDto> 리뷰목록보기(int boardId){
		return 	reviewDao.findAll(boardId);	
	}
	
	public List<SaveRespDto> 리뷰목록4개제한(int boardId){
		return 	reviewDao.findFour(boardId);	
	}
	
	public int 리뷰작성(SaveReqDto dto) {
		return reviewDao.save(dto);		
	}
	
}
