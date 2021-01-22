
package com.cos.mangoplate.domain.dto;

import com.cos.mangoplate.domain.GetFoodKr;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Data {

	@SerializedName("getFoodKr")
	@Expose
	private GetFoodKr getFoodKr;

	public GetFoodKr getGetFoodKr() {
		return getFoodKr;
	}

	public void setGetFoodKr(GetFoodKr getFoodKr) {
		this.getFoodKr = getFoodKr;
	}

}
