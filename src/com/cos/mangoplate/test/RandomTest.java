package com.cos.mangoplate.test;

import java.util.Random;

public class RandomTest {
	
	public static void main(String[] args) { //소수점 한자리수의 난수 만들기.. 
         
         for (int i = 0; i < 10; i++) {
        	 
        	 Double min = 3.0;  // Set To Your Desired Min Value
             Double max = 4.0; // Set To Your Desired Max Value
             double x = (Math.random() * ((max - min) + 1)) + min;   // This Will Create A Random Number Inbetween Your Min And Max.
             double xrounded = Math.round(x * 10) / 10.0;   // Creates Answer To The Nearest 100 th, You Can Modify This To Change How It Rounds.
             
             
        	 System.out.println(xrounded);    // This Will Now Print Out The Rounded, Random Number.	
		}
         
	}

}
