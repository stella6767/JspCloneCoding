package com.cos.mangoplate.domain.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.review.dto.SaveRespDto;
import com.cos.mangoplate.domain.review.dto.TestReviewDto;


public class ReviewDao {
	
	public List<SaveRespDto> findAll(int boardId){

		StringBuffer sb = new StringBuffer();
		sb.append("SELECT r.*, u.username ");
		sb.append("FROM review r inner join user u ");
		sb.append("on r.userid = u.id ");
		sb.append("WHERE r.boardId = ? ORDER BY r.id DESC");
		String sql = sb.toString();
		
		
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs  = null;

		List<SaveRespDto> reviews = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			rs =  pstmt.executeQuery();

			// Persistence API
			while(rs.next()) { // 커서를 이동하는 함수
				SaveRespDto review = new SaveRespDto();
				review.setId(rs.getInt("id"));
				review.setUserId(rs.getInt("userId"));
				review.setBoardId(rs.getInt("boardId"));
				review.setContent(rs.getString("content"));
				review.setCreateDate(rs.getTimestamp("createDate"));
				review.setUsername(rs.getString("u.username"));
				reviews.add(review);
			}
			return reviews;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt, rs);
		}
		return null;
	}
	
	
	
	public int save(SaveRespDto dto) {// 회원가입
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
