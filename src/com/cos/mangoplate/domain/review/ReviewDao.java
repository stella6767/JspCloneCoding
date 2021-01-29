package com.cos.mangoplate.domain.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.board.dto.AllListRespDto;
import com.cos.mangoplate.domain.review.dto.SaveReqDto;
import com.cos.mangoplate.domain.review.dto.SaveRespDto;
import com.cos.mangoplate.domain.review.dto.TestReviewDto;
import com.cos.mangoplate.domain.review.dto.UpdateReqDto;


public class ReviewDao {
	
	
	public List<SaveRespDto> findFour(int boardId){

		StringBuffer sb = new StringBuffer();
		sb.append("SELECT r.*, u.username ");
		sb.append("FROM review r inner join user u ");
		sb.append("on r.userid = u.id ");
		sb.append("WHERE r.boardId = ? ORDER BY r.id DESC LIMIT 0, 4");
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
				review.setTitle(rs.getString("title"));
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
	
	public List<SaveRespDto> moreList(int boardId,int startNum) {
	
		//String sql = "SELECT * FROM review LIMIT ?, 4"; 
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT r.*, u.username ");
		sb.append("FROM review r inner join user u ");
		sb.append("on r.userid = u.id ");
		sb.append("WHERE r.boardId = ? ORDER BY r.id DESC LIMIT ?, 4 ");
		String sql = sb.toString();
		
		
		
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<SaveRespDto> reviews = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardId); 
			pstmt.setInt(2, startNum); 
			rs = pstmt.executeQuery();
			while (rs.next()) { // 커서를 이동하는 함수
				SaveRespDto review = new SaveRespDto();
				review.setId(rs.getInt("id"));
				review.setUserId(rs.getInt("userId"));
				review.setBoardId(rs.getInt("boardId"));
				review.setTitle(rs.getString("title"));
				review.setContent(rs.getString("content"));
				review.setCreateDate(rs.getTimestamp("createDate"));
				review.setUsername(rs.getString("u.username"));
				reviews.add(review);					
			}

			return reviews;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt, rs);
		}

		return null;
	}
	
	public int update(UpdateReqDto dto) {
		String sql = "UPDATE review SET title = ?, content = ?, updateDate=now() WHERE id = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getId());
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt);
		}
		return -1;
	}
	
	public SaveRespDto findById(int id) {


		String sql = "select * from review where id = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 커서를 이동하는 함수
				SaveRespDto dto = new SaveRespDto();
				dto.setBoardId(rs.getInt("boardId"));
				dto.setContent(rs.getString("content"));
				dto.setTitle(rs.getString("title"));
				dto.setUserId(rs.getInt("userid"));
				dto.setId(rs.getInt("id"));
				return dto;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt, rs);
		}

		return null;
	}
	
	
	
	public int deleteById(int id) { // 회원가입
		String sql = "DELETE FROM review WHERE id = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt);
		}
		return -1;
	}
	
	
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
				review.setTitle(rs.getString("title"));
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
	
	
	
	public int save(SaveReqDto dto) {// 회원가입
		String sql = "INSERT INTO review(boardId, title, userId, content, createDate) VALUES (?,?,?,?, now())";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getBoardId());
			pstmt.setString(2, dto.getTitle());
			pstmt.setInt(3, dto.getUserId());
			pstmt.setString(4, dto.getContent());

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
