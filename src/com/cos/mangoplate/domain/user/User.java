package com.cos.mangoplate.domain.user;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
	private int id;
	private String username;
	private String password;
	private String email;
	private String userRole; // admin, user
	private Timestamp createDate;
}
