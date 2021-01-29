package com.cos.mangoplate.domain.review.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class UpdateReqDto {
	private int id;
	private String title;
	private String content;
	//나중에 업데이트 날짜도 가져오는 식으로..
}
