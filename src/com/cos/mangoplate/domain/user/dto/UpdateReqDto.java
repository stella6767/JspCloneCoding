package com.cos.mangoplate.domain.user.dto;

import lombok.Data;

@Data
public class UpdateReqDto {
	private String password;
	private String email;
}
