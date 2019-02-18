

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%
	/*  Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
	 
	 
	 */
	try {
		Class.forName("com.mysql.jdbc.Driver"); //mysql jar added
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacompiler", "root","admin");
		ResultSet rs;
		PreparedStatement ps;
		//out.println("Connected to DataBase...");

		String user = request.getParameter("username");
		String answer = request.getParameter("ans");

		String qry = "select * from register where uname=? and answer=?";
		ps = con.prepareStatement(qry);
		ps.setString(1, user);
		ps.setString(2, answer);
		rs = ps.executeQuery();
		if (rs.next()) {
			String ansr = rs.getString("answer");
			String pwd = rs.getString("pwd");

			if (ansr != null && answer.equals(ansr)) {
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Display Password</title>
</head>
<body bgcolor="#e5eecc">
	<h3>Your Password</h3>
	<%=pwd%><br>
	<br> Please
	<a href="index.jsp"><b>Login</b></a>
</body>
</html>
<%
	}

		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
