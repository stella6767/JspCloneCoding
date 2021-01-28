package com.cos.mangoplate.domain.board.dto;

import lombok.Data;

@Data
public class MapDto {
	private int id;
	private String title;
	private String addr;
	private double lat;
	private double lng;
	
}
