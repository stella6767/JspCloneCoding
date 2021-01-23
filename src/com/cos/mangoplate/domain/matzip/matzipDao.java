package com.cos.mangoplate.domain.matzip;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;


import com.cos.mangoplate.config.DB;


public class matzipDao {
	
	
	//데이터베이스에 api 값 집어넣기
	public void insertALL(List<Item> items) {
		
			String sql = "INSERT INTO matzip(maintitle,gugumn,lat, lng) VALUES (?,?,?,?)";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;

			try {			 	
				for (int i = 0; i < items.size(); i++) {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, items.get(i).getMainTitle());
					pstmt.setString(2, items.get(i).getGugumn());
					pstmt.setDouble(3, items.get(i).getLat());
					pstmt.setDouble(4, items.get(i).getLng());
						
					pstmt.executeUpdate();		
					
				}


			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DB.close(conn, pstmt);
			}
			
			//return null;

		
		
		
	}

}
