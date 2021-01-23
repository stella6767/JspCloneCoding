package com.cos.mangoplate.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import com.cos.mangoplate.domain.matzip.Data;
import com.cos.mangoplate.domain.matzip.Item;
import com.google.gson.Gson;



public class ApiTest {
		
		public static List<Item> apitest(){	
			try {
				URL url = new URL("http://apis.data.go.kr/6260000/FoodService/getFoodKr?serviceKey=F6SVec1WEa5T9LT5IXQFSX2G4K6GNmzDgkUhFMN%2FYte%2BR6i%2BHxuUC6T0KP6NazY5UCnor8Ym4r%2Bnc1mdvbugGA%3D%3D&pageNo=1&numOfRows=1000&resultType=json");
		        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); //url의 정보들을 담는다.
				
		        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream())); //url 정보를 읽어온다.
		        StringBuilder sb = new StringBuilder(); //builder, bufferd(동기화 지원)
		        
		        String input = null;
		        while((input = br.readLine()) != null) {
		        	sb.append(input);
		        }
		        //System.out.println(sb.toString());
		        
		        Gson gson = new Gson();
		        
		        Data data = gson.fromJson(sb.toString(), Data.class);
		        
		        List<Item> items = data.getGetFoodKr().getItem();
		        
		       return items;
		        
//				ResponseDto dto = gson.fromJson(sb.toString(), ResponseDto.class);
//				
//				List<Item> items = dto.getGetAttractionKr().getItem();
//				
//				return items;
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return null;		
			
		}
			
   
}