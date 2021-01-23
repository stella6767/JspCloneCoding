package com.cos.mangoplate.domain.matzip;

import java.sql.Timestamp;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class Item {

	@SerializedName("UC_SEQ")
	@Expose
	private Integer uCSEQ;
	
	@SerializedName("MAIN_TITLE")
	@Expose
	private String mainTitle;
	
	@SerializedName("GUGUN_NM")
	@Expose
	private String gugumn;
	
	@SerializedName("LAT")
	@Expose
	private Double lat;
	
	@SerializedName("LNG")
	@Expose
	private Double lng;
	
	@SerializedName("PLACE")
	@Expose
	private String place;
	
	@SerializedName("TITLE")
	@Expose
	private String title;

	@SerializedName("SUBTITLE")
	@Expose
	private String subTitle;
	
	@SerializedName("ADDR1")
	@Expose
	private String addr1;
	
	@SerializedName("ADDR2")
	@Expose
	private String addr2;
	
	@SerializedName("CNTCT_TEL")
	@Expose
	private String cntctTel;
	
	@SerializedName("HOMEPAGE_URL")
	@Expose
	private String homepageUrl;
	
	@SerializedName("USAGE_DAY_WEEK_AND_TIME")
	@Expose
	private String usageDayWeekAndTime;
	
	@SerializedName("RPRSNTV_MENU")
	@Expose
	private String rprsntvMenu;
	
	@SerializedName("MAIN_IMG_NORMAL")
	@Expose
	private String MainImgNormal;
	
	@SerializedName("MAIN_IMG_THUMB")
	@Expose
	private String mainImgThumb;
	
	@SerializedName("ITEMCNTNTS")
	@Expose
	private String itemCntnts;

	

}