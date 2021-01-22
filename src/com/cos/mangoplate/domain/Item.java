package com.cos.mangoplate.domain;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Item {

	@SerializedName("UC_SEQ")
	@Expose
	private Integer uCSEQ;
	@SerializedName("MAIN_TITLE")
	@Expose
	private String mAINTITLE;
	@SerializedName("GUGUN_NM")
	@Expose
	private String gUGUNNM;
	@SerializedName("LAT")
	@Expose
	private Double lAT;
	@SerializedName("LNG")
	@Expose
	private Double lNG;
	@SerializedName("PLACE")
	@Expose
	private String pLACE;
	@SerializedName("TITLE")
	@Expose
	private String tITLE;
	@SerializedName("SUBTITLE")
	@Expose
	private String sUBTITLE;
	@SerializedName("ADDR1")
	@Expose
	private String aDDR1;
	@SerializedName("ADDR2")
	@Expose
	private String aDDR2;
	@SerializedName("CNTCT_TEL")
	@Expose
	private String cNTCTTEL;
	@SerializedName("HOMEPAGE_URL")
	@Expose
	private String hOMEPAGEURL;
	@SerializedName("USAGE_DAY_WEEK_AND_TIME")
	@Expose
	private String uSAGEDAYWEEKANDTIME;
	@SerializedName("RPRSNTV_MENU")
	@Expose
	private String rPRSNTVMENU;
	@SerializedName("MAIN_IMG_NORMAL")
	@Expose
	private String mAINIMGNORMAL;
	@SerializedName("MAIN_IMG_THUMB")
	@Expose
	private String mAINIMGTHUMB;
	@SerializedName("ITEMCNTNTS")
	@Expose
	private String iTEMCNTNTS;

	public Integer getUCSEQ() {
		return uCSEQ;
	}

	public void setUCSEQ(Integer uCSEQ) {
		this.uCSEQ = uCSEQ;
	}

	public String getMAINTITLE() {
		return mAINTITLE;
	}

	public void setMAINTITLE(String mAINTITLE) {
		this.mAINTITLE = mAINTITLE;
	}

	public String getGUGUNNM() {
		return gUGUNNM;
	}

	public void setGUGUNNM(String gUGUNNM) {
		this.gUGUNNM = gUGUNNM;
	}

	public Double getLAT() {
		return lAT;
	}

	public void setLAT(Double lAT) {
		this.lAT = lAT;
	}

	public Double getLNG() {
		return lNG;
	}

	public void setLNG(Double lNG) {
		this.lNG = lNG;
	}

	public String getPLACE() {
		return pLACE;
	}

	public void setPLACE(String pLACE) {
		this.pLACE = pLACE;
	}

	public String getTITLE() {
		return tITLE;
	}

	public void setTITLE(String tITLE) {
		this.tITLE = tITLE;
	}

	public String getSUBTITLE() {
		return sUBTITLE;
	}

	public void setSUBTITLE(String sUBTITLE) {
		this.sUBTITLE = sUBTITLE;
	}

	public String getADDR1() {
		return aDDR1;
	}

	public void setADDR1(String aDDR1) {
		this.aDDR1 = aDDR1;
	}

	public String getADDR2() {
		return aDDR2;
	}

	public void setADDR2(String aDDR2) {
		this.aDDR2 = aDDR2;
	}

	public String getCNTCTTEL() {
		return cNTCTTEL;
	}

	public void setCNTCTTEL(String cNTCTTEL) {
		this.cNTCTTEL = cNTCTTEL;
	}

	public String getHOMEPAGEURL() {
		return hOMEPAGEURL;
	}

	public void setHOMEPAGEURL(String hOMEPAGEURL) {
		this.hOMEPAGEURL = hOMEPAGEURL;
	}

	public String getUSAGEDAYWEEKANDTIME() {
		return uSAGEDAYWEEKANDTIME;
	}

	public void setUSAGEDAYWEEKANDTIME(String uSAGEDAYWEEKANDTIME) {
		this.uSAGEDAYWEEKANDTIME = uSAGEDAYWEEKANDTIME;
	}

	public String getRPRSNTVMENU() {
		return rPRSNTVMENU;
	}

	public void setRPRSNTVMENU(String rPRSNTVMENU) {
		this.rPRSNTVMENU = rPRSNTVMENU;
	}

	public String getMAINIMGNORMAL() {
		return mAINIMGNORMAL;
	}

	public void setMAINIMGNORMAL(String mAINIMGNORMAL) {
		this.mAINIMGNORMAL = mAINIMGNORMAL;
	}

	public String getMAINIMGTHUMB() {
		return mAINIMGTHUMB;
	}

	public void setMAINIMGTHUMB(String mAINIMGTHUMB) {
		this.mAINIMGTHUMB = mAINIMGTHUMB;
	}

	public String getITEMCNTNTS() {
		return iTEMCNTNTS;
	}

	public void setITEMCNTNTS(String iTEMCNTNTS) {
		this.iTEMCNTNTS = iTEMCNTNTS;
	}

}