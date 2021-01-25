package com.cos.mangoplate.service;

import java.util.List;

import com.cos.mangoplate.domain.board.Board;
import com.cos.mangoplate.domain.board.BoardDao;

public class BoardService {
	
	private BoardDao boardDao;
	
	public BoardService() {
		boardDao = new BoardDao();
	}
	
	
	public List<Board> 전체글목록보기(){
		return boardDao.findAll();
	}

}
