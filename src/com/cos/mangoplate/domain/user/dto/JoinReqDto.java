package com.cos.mangoplate.domain.user.dto;

import lombok.Data;

@Data
public class JoinReqDto {
	private String username;
	private String password;
	private String email;
}
