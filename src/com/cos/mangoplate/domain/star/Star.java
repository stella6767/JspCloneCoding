package com.cos.mangoplate.domain.star;

import lombok.Data;

@Data
public class Star {
	private int id;
	private int userId;
	private int BoardId;
	private int likeStar;
}
