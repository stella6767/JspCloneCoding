package com.cos.mangoplate.domain.review;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.review.dto.TestReviewDto;


public class ReviewDao {
	
	
	
	
	
	public int save(TestReviewDto dto) {// 회원가입
		String sql = "INSERT INTO review(boardId, content, createDate) VALUES (?,?,now())";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getBoardId());
			pstmt.setString(2, dto.getContent());

			int result = pstmt.executeUpdate();
			return result;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		return -1;

	}

}
