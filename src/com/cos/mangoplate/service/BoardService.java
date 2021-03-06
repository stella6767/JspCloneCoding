package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.board.Board;
import com.cos.mangoplate.domain.board.BoardDao;
import com.cos.mangoplate.domain.board.dto.AllListRespDto;
import com.cos.mangoplate.domain.board.dto.MapDto;

public class BoardService {
	
	private BoardDao boardDao;
	
	public BoardService() {
		boardDao = new BoardDao();
	}
	
	public int 글개수(String keyword) {
		return boardDao.count(keyword);
	}
	
	public List<AllListRespDto> 검색목록보기(String keyword,int page){
		return boardDao.searchByKeyword(keyword,page);		
	}
	
	public List<AllListRespDto> 구군별맛집목록보기(String keyword){
		return boardDao.findByGkeyword(keyword);
	}
	
	
	public List<AllListRespDto> 메뉴별맛집목록보기(String keyword){
		return boardDao.findByMkeyword(keyword);
	}
	
	
	public Board 글상세보기(int id) {
		
		// 조회수 업데이트 치기
		int result = boardDao.updateReadCount(id);
		if (result == 1) {
		return boardDao.findById(id);
		}else {
			return null;
		}
	}
	
	
	public List<AllListRespDto> 맛집목록보기() {
		return boardDao.findList();		
	}
	
	public List<AllListRespDto> 목록더보기(int startNum){
		return boardDao.moreList(startNum);		
	}
	
	
	public List<Board> 전체글목록보기(){
		return boardDao.findAll();
	}
	
	public List<Board> 찜한목록보기(int userId){
		return boardDao.findByStar(userId);
	}

}
