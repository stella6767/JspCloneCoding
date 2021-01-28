package com.cos.mangoplate.domain.review.dto;

import lombok.Data;

@Data
public class SaveReqDto {
	private int userId;
	private int boardId;
	private String title;
	private String content;
}
