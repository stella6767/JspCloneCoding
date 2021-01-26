package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.board.Board;
import com.cos.mangoplate.domain.board.BoardDao;
import com.cos.mangoplate.domain.board.dto.AllListRespDto;

public class BoardService {
	
	private BoardDao boardDao;
	
	public BoardService() {
		boardDao = new BoardDao();
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

}
