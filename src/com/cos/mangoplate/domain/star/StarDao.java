package com.cos.mangoplate.domain.star;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.star.dto.SaveReqDto;


public class StarDao {
	
	public int delete(SaveReqDto dto) {
		String sql = "delete FROM star WHERE userId = ? AND boardId = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getUserId());
			pstmt.setInt(2, dto.getBoardId());

			int result = pstmt.executeUpdate();
			return result;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		return -1;

	}
	
	
	public int save(SaveReqDto dto) {
		String sql = "INSERT INTO star(userId, boardId, likeStar) VALUES (?,?,1)";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getUserId());
			pstmt.setInt(2, dto.getBoardId());

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
