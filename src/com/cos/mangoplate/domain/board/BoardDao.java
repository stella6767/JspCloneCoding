package com.cos.mangoplate.domain.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.mangoplate.config.DB;
import com.cos.mangoplate.domain.board.dto.AllListRespDto;


public class BoardDao {
	
	public List<AllListRespDto> findByKeyword(String keyword){
		
		String sql = "SELECT * FROM matzip WHERE title LIKE ? OR menu LIKE ? or fooddesc LIKE ? "; 
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AllListRespDto> boards = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + keyword + "%");
			pstmt.setString(2, "%" + keyword + "%");
			pstmt.setString(3, "%" + keyword + "%");
			
			rs = pstmt.executeQuery();
			while (rs.next()) { // 커서를 이동하는 함수
				AllListRespDto dto = new AllListRespDto();
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setAddr(rs.getString("addr"));
				dto.setMainImg(rs.getString("mainimg"));
				dto.setFoodDesc(rs.getString("fooddesc"));
				dto.setRate(rs.getDouble("rate"));
				dto.setReadCount(rs.getInt("readCount"));
				
				boards.add(dto); //?							
			}

			return boards;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt, rs);
		}

		return null;
		
		
	}
	
	
	
	
	public int updateReadCount(int id) {
		String sql = "UPDATE matzip SET readCount=readCount+1 WHERE Id = ?";

		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		return -1;
	}
		
	
	public Board findById(int id) {
		
				String sql = "SELECT * FROM matzip where id = ?";  
				Connection conn = DB.getConnection();
				PreparedStatement pstmt = null;
				ResultSet rs = null;
	
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, id);
					rs = pstmt.executeQuery();
					while (rs.next()) { // 커서를 이동하는 함수
						
						Board board = Board.builder()
								.id(rs.getInt("id"))
								.title(rs.getString("title"))
								.gugun(rs.getString("gugun"))
								.lat(rs.getDouble("lat"))
								.lng(rs.getDouble("lng"))
								.place(rs.getString("place"))
								.addr(rs.getString("addr"))
								.tel(rs.getString("tel"))
								.url(rs.getString("url"))
								.usageTime(rs.getString("usagetime"))
								.menu(rs.getString("menu"))
								.mainImg(rs.getString("mainimg"))
								.subImg(rs.getString("subimg"))
								.foodDesc(rs.getString("fooddesc"))
								.rate(rs.getDouble("rate"))
								.readCount(rs.getInt("readCount"))
								.build();
						
						return board;
					}

				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					DB.close(conn, pstmt, rs);
				}

				return null;
		
		
	}
	
	
	
	public List<AllListRespDto> moreList(int startNum) {
		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM matzip LIMIT ?, 10"; 
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AllListRespDto> boards = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum); 
			rs = pstmt.executeQuery();
			while (rs.next()) { // 커서를 이동하는 함수
				AllListRespDto dto = new AllListRespDto();
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setAddr(rs.getString("addr"));
				dto.setMainImg(rs.getString("mainimg"));
				dto.setFoodDesc(rs.getString("fooddesc"));
				dto.setRate(rs.getDouble("rate"));
				dto.setReadCount(rs.getInt("readCount"));
						
				boards.add(dto);							
			}

			return boards;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt, rs);
		}

		return null;
	}
	
	
	
	public List<AllListRespDto> findList10(){
		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
				String sql = "SELECT * FROM matzip LIMIT 0, 10";  //직관적이지는 않다....
				Connection conn = DB.getConnection();
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				List<AllListRespDto> boards = new ArrayList<>();

				try {
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
				
					while (rs.next()) { // 커서를 이동하는 함수	
						AllListRespDto dto = new AllListRespDto();
						dto.setId(rs.getInt("id"));
						dto.setTitle(rs.getString("title"));
						dto.setAddr(rs.getString("addr"));
						dto.setMainImg(rs.getString("mainimg"));
						dto.setFoodDesc(rs.getString("fooddesc"));
						dto.setRate(rs.getDouble("rate"));
						dto.setReadCount(rs.getInt("readCount"));
						
						boards.add(dto);
					}

					return boards;
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					DB.close(conn, pstmt, rs);
				}

				return null;
			}
		
		
	
	
	
	
	public List<Board> findAll() {

		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM matzip";  
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Board> boards = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) { // 커서를 이동하는 함수
				
				Board board = Board.builder()
						.id(rs.getInt("id"))
						.title(rs.getString("title"))
						.gugun(rs.getString("gugun"))
						.lat(rs.getDouble("lat"))
						.lng(rs.getDouble("lng"))
						.place(rs.getString("place"))
						.addr(rs.getString("addr"))
						.tel(rs.getString("tel"))
						.url(rs.getString("url"))
						.usageTime(rs.getString("usagetime"))
						.menu(rs.getString("menu"))
						.mainImg(rs.getString("mainimg"))
						.subImg(rs.getString("subimg"))
						.foodDesc(rs.getString("fooddesc"))
						.readCount(rs.getInt("readCount"))
						.build();
				
				boards.add(board);
			}

			return boards;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt, rs);
		}

		return null;
	}
	

}
