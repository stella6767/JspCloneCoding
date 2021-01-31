package com.cos.mangoplate.domain.review.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class SaveRespDto { //유저네임 추가 조인활용
	private int id;
	private int userId;
	private int boardId;
	private String title;
	private String content;
	private Timestamp createDate;
	private Timestamp updateDate;
	private String username;
	private int sessionId; //추가	
	
}
