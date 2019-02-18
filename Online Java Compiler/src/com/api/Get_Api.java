package com.api;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Get_Api extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList fi=new ArrayList();
		ArrayList cons=new ArrayList();
		ArrayList method=new ArrayList();
		Class c;
		//String name = request.getParameter("apiname");
		String name="java.util.ArrayList";
		try {
			c = Class.forName(name);
			Constructor cc[] = c.getConstructors();
			Method m[] = c.getMethods();
			Field f[] = c.getFields();

			for (int i = 0; i < f.length; i++) {
				fi.add(f[i]);
				//System.out.println(fi);
			}
			
			for (int i = 0; i < m.length; i++) {
				method.add(m[i]);
				System.out.println(method);
			}
			
			for (int i = 0; i < cc.length; i++) {
				cons.add(cc[i]);
				//System.out.println(cons);
			}
			
			request.setAttribute("fi", fi);
			request.setAttribute("method", method);
			request.setAttribute("cons", cons);
			// Disptching request

			RequestDispatcher rd = request.getRequestDispatcher("viewapi.jsp");

			if (rd != null) {

				rd.forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
