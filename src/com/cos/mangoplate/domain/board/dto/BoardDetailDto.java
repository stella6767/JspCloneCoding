package com.cos.mangoplate.domain.board.dto;

public class BoardDetailDto { //귀찮으니까 dTO 새로 만들긴 했는데 쓰지는 않고. 그냥 Board model에서 추가..
	
	private int id;
	private String title;
	private String gugun;
	private double lat;
	private double lng;
	private String place;
	private String addr;
	private String tel;
	private String url;
	private String usageTime;
	private String menu;
	private String mainImg;
	private String subImg;
	private String foodDesc;
	private double rate;
	private int readCount; //조회수 
}
