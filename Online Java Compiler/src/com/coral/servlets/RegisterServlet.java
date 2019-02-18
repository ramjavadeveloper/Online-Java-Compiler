package com.coral.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coral.DButil.DbUtility;

public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		System.out.println("in regiserv");
		Connection con = null;
		Statement st = null;
		try {
			con = DbUtility.getConnection();
			st = con.createStatement();
			String user = req.getParameter("uname");
			String emailid = req.getParameter("email");
			String passwd = req.getParameter("pwd");
			String ques = req.getParameter("question");
			String ans = req.getParameter("answer");

			String qry = "select uname from register where uname='" + user
					+ "'";
			ResultSet rs = st.executeQuery(qry);
			if (rs.next()) {
				req.setAttribute("err",
						"This USer Already Registered...pls use differnt user name...!!!!");

				res.sendRedirect("index.jsp");
			}

			else {

				st.executeUpdate("insert into register(uname,email,pwd,question,answer) values('"
						+ user
						+ "','"
						+ emailid
						+ "','"
						+ passwd
						+ "','"
						+ ques + "','" + ans + "')");
				{
					req.setAttribute("err",
							"This user succesfully Registered...pls login...!!!!");

					res.sendRedirect("index.jsp");

				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
