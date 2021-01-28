package com.cos.mangoplate.domain.review.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class TestReviewDto {
	private int boardId;
	private String title;
	private String content;
}
