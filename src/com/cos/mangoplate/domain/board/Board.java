package com.cos.mangoplate.domain.board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Board {
	
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
	
}
