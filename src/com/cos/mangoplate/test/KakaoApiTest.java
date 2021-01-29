package com.cos.mangoplate.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;

import com.cos.mangoplate.domain.matzip.Data;
import com.cos.mangoplate.domain.matzip.Item;
import com.google.gson.Gson;

public class KakaoApiTest {
	
	public static void apitest(){	
		try {
			URL url = new URL("https://kauth.kakao.com/oauth/authorize?client_id=아이디&redirect_uri=http://localhost:8000/blog/oauth/kakao?cmd=callback&response_type=code");
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
	        
	       //return items;
	        
//			ResponseDto dto = gson.fromJson(sb.toString(), ResponseDto.class);
//			
//			List<Item> items = dto.getGetAttractionKr().getItem();
//			
//			return items;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//return null;		
		
	}
	
	
}