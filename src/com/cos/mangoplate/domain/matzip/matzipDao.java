package com.cos.mangoplate.domain.matzip;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.cos.mangoplate.config.DB;

public class matzipDao {

	// 데이터베이스에 api 값 집어넣기
	public void insertALL(List<Item> items) {

		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO matzip(title,gugun,lat, lng, place, addr, tel, url, usagetime, menu, mainimg, subimg, fooddesc) ");
		sb.append("VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");

		String sql = sb.toString();

		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;

		try {
			for (int i = 0; i < items.size(); i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, items.get(i).getMainTitle());
				pstmt.setString(2, items.get(i).getGugumn());
				pstmt.setDouble(3, items.get(i).getLat());
				pstmt.setDouble(4, items.get(i).getLng());
				pstmt.setString(5, items.get(i).getPlace());
				pstmt.setString(6, items.get(i).getAddr1());
				pstmt.setString(7, items.get(i).getCntctTel());
				pstmt.setString(8, items.get(i).getHomepageUrl());
				pstmt.setString(9, items.get(i).getUsageDayWeekAndTime());
				pstmt.setString(10, items.get(i).getRprsntvMenu());
				pstmt.setString(11, items.get(i).getMainImgNormal());
				pstmt.setString(12, items.get(i).getMainImgThumb());
				pstmt.setString(13, items.get(i).getItemCntnts());
				
				
				pstmt.executeUpdate();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}

		// return null;

	}

}
