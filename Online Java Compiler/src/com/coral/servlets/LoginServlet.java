package com.coral.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.coral.DButil.DbUtility;

public class LoginServlet extends HttpServlet {
	
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		
		Connection con = null;
		ResultSet rs;
		PreparedStatement ps = null;
		try {
			String uname=req.getParameter("uname");
		    String pwd=req.getParameter("pwd");
		    
		   
		    
			con = DbUtility.getConnection();
			String qur="select * from register where uname=? and pwd=?";
			 ps=(PreparedStatement) con.prepareStatement(qur);
			 ps.setString(1, uname);
			 ps.setString(2,pwd);
			
			 
			rs=ps.executeQuery();
		    if(rs.next())
		    {
		    	 HttpSession session = req.getSession();
				 session.setAttribute("user", uname);
		    	 RequestDispatcher rd=req.getRequestDispatcher("myaccount.jsp");
					rd.forward(req, res);
		    }
		      
		    else
		        {
			       RequestDispatcher rd=req.getRequestDispatcher("nouser.jsp");
					rd.forward(req, res);

		        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
