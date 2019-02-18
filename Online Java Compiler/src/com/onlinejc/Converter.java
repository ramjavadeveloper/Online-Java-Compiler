package com.onlinejc;


import java.io.IOException;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Converter extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		char bin,oct,ascii,hex;
		String text;
		int asciii;
		String asc="",binari="",octa="",hexaa="",str=""; 
		
		int a;
	byte []encoded;
		text=request.getParameter("text");
		
		if(text.length()>0)
		{
		for (int i = 0; i < text.length(); i++) 
		{
			ascii = text.charAt(i);
			 asciii = ascii;
			 asc=asc+" "+asciii;
			
			
		}
		//System.out.println(asc);
		for (int i = 0; i < text.length(); i++) 
		{
			bin = text.charAt(i);
			 binari=binari+" "+Integer.toBinaryString(bin);
			 
			
		}
		//System.out.println();
		for (int i = 0; i < text.length(); i++) 
		{
			oct = text.charAt(i);
			octa=octa+" "+Integer.toOctalString(oct);
			
			
			
		}
		
		//System.out.print(octa);
		for (int i = 0; i < text.length(); i++) 
		{
			 hex = text.charAt(i);
			 hexaa=hexaa+" "+Integer.toHexString(hex);
			 
			
		}
		//System.out.print(hexaa);
		encoded=text.getBytes();
		str=Base64.getEncoder().encodeToString(encoded);
		}
		else
		{
			request.setAttribute("msg","Please Enter Any Text");
			RequestDispatcher rd=request.getRequestDispatcher("/converter.jsp");
			rd.forward(request, response);
		}
		request.setAttribute("text",text);
		request.setAttribute("ascii",asc);
		request.setAttribute("bin",binari);
		request.setAttribute("oct",octa);
		request.setAttribute("hex",hexaa);
		request.setAttribute("base64",str);
	
		RequestDispatcher rd=request.getRequestDispatcher("/converter.jsp");
		rd.forward(request, response);	
		
	}

}
