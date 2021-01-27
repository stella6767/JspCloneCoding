package com.cos.mangoplate.domain.board.dto;


import lombok.Data;


@Data
public class AllListRespDto {
	
	private int id;
	private String title;
	private String addr;
	private String mainImg;
	private String foodDesc;
	private double lat;
	private double lng;
	private double rate;
	private int readCount; //조회수 
	
	
}
