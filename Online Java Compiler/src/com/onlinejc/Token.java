package com.onlinejc;

import java.util.StringTokenizer;

public class Token {

	public static void main(String[] args) 
	{
		StringTokenizer st1=new StringTokenizer("my%name%is%Khan");
		System.out.println("Next token is :-");
		while(st1.hasMoreTokens())
		{
		System.out.println(st1.nextToken("%"));
		}
		
	}

}
