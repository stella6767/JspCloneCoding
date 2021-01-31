package com.cos.mangoplate.domain.star;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.star.dto.InsertReqDto;
import com.cos.mangoplate.domain.star.dto.UpdateReqDto;


public class StarDao {
	
	public int check(int boardId) {
		String sql = "select * FROM star where boardId = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			rs = pstmt.executeQuery();

			rs = pstmt.executeQuery();
			if (rs.next()) { // 커서를 이동하는 함수
				return rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		return -1;

	}
	
	
	public void insert(InsertReqDto dto) {
		
		String sql = "INSERT INTO star(boardId, likeStar) VALUES (?,0)";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getBoardId());

			int result = pstmt.executeUpdate();
			//return result;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		//return -1;
		
	}
	
	
	public int cancel(UpdateReqDto dto) {
		String sql = "UPDATE star SET likeStar = 0, userId = ? where boardId = ?";
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
	
	
	public int update(UpdateReqDto dto) {
		String sql = "UPDATE star SET likeStar = 1, userId = ? where boardId = ?";
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
