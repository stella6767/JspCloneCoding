package com.cos.mangoplate.domain.review;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	private int id;
	private int userId;
	private int boardId;
	private String content;
	private Timestamp createDate;

}
