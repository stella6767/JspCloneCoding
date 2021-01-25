package com.cos.mangoplate.domain.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.mangoplate.config.DB;


public class BoardDao {
	
	public List<Board> findAll() {

		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM matzip";  //직관적이지는 않다....
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