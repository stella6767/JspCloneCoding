package com.cos.mangoplate.domain;

import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class GetFoodKr {

	@SerializedName("header")
	@Expose
	private Header header;
	@SerializedName("item")
	@Expose
	private List<Item> item = null;
	@SerializedName("numOfRows")
	@Expose
	private Integer numOfRows;
	@SerializedName("pageNo")
	@Expose
	private Integer pageNo;
	@SerializedName("totalCount")
	@Expose
	private Integer totalCount;

	public Header getHeader() {
		return header;
	}

	public void setHeader(Header header) {
		this.header = header;
	}

	public List<Item> getItem() {
		return item;
	}

	public void setItem(List<Item> item) {
		this.item = item;
	}

	public Integer getNumOfRows() {
		return numOfRows;
	}

	public void setNumOfRows(Integer numOfRows) {
		this.numOfRows = numOfRows;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

}