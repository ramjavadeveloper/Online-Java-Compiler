

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver"); //mysql jar added
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javacompiler", "root", "admin");
	Statement st = con.createStatement();
	//out.println("Connected to DataBase...");
	String user = (String) session.getAttribute("user");

	String qry = "select * from register where uname='" + user + "'";
	ResultSet rs = st.executeQuery(qry);

	while (rs.next()) {
		String username = rs.getString(1);
		String email = rs.getString(2);
		String password = rs.getString(3);
		String question = rs.getString(4);
		String answer = rs.getString(5);
%>





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Compiler - Help</title>


<link rel="stylesheet" href="menu.css" />
<link rel="stylesheet" href="rsa.css" />

<script src="jquery.js" type="text/javascript"></script>
<script src="jeasing.js" type="text/javascript"></script>
<script src="menujs.js" type="text/javascript"></script>
</head>
<body>
	<div class="header">JavaCompiler</div>
	<div class="cap">with security editor</div>
	<div>
		<h3 style="color: white; position: absolute; left: 80%">
			Welcome
			<%=user%>
			<br>
		</h3>
	</div>

	<div id="menu">
		<ul>
			<li class="purple">
				<p>
					<a href="myaccount.jsp">My Account</a>
				</p>
				<p class="subtext">View My Account</p>
			</li>
			<li class="purple">
				<p>
					<a href="compiler.jsp">Compiler</a>
				</p>
				<p class="subtext">Create and Compile Java Files</p>
			</li>
			<li class="purple">
				<p>
					<a href="encrypt.jsp">Encrypt</a>
				</p>
				<p class="subtext">Encrypt the Java Code</p>
			</li>
			<li class="purple">
				<p>
					<a href="decrypt.jsp">Decrypt</a>
				</p>
				<p class="subtext">Decrypt the Java Code</p>
			</li>

			<li class="purple">
				<p>
					<a href="text2audio.jsp">Convert</a>
				</p>
				<p class="subtext">Text TO Audio</p>
			</li>

			<li class="purple">
				<p>
					<a href="api.jsp">API Info</a>
				</p>
				<p class="subtext">Get the API information in Java</p>
			</li>
			<li class="purple">
				<p>
					<a href="converter.jsp">Convert Text</a>
				</p>
				<p class="subtext">Text To Ascii,Bin,Oct,Hex,Base64</p>
			</li>
			<li class="purple">
				<p>
					<a href="help.jsp">Help</a>
				</p>
				<p class="subtext">Read the FAQs...</p>
			</li>
			<li class="purple">
				<p>
					<a href="logout">Logout</a>
				</p>
				<p class="subtext">Please Logout Here...</p>
			</li>
		</ul>
	</div>

	<div class="help">My Account</div>
	<div class="faq">
		<p align="right">
			<b><a href="index.jsp"></a></b>
		</p>
		<hr />
		<table align="center" cellspacing="10%">
			<tr>
				<th align="left">Your UserName</th>
				<td><b>:</b> <%=username%></td>
			</tr>
			<tr>
				<th align="left">Password</th>
				<td><b>:</b> <%=password%></td>
			</tr>
			<tr>
				<th align="left">Email Id</th>
				<td><b>:</b> <%=email%></td>
			</tr>
			<tr>
				<th align="left">Your Security Question</th>
				<td><b>:</b> <%=question%></td>
			</tr>
			<tr>
				<th align="left">Answer</th>
				<td><b>:</b> <%=answer%></td>
			</tr>
		</table>
		<br>
		<br>
		<br>
		<br>
		<center>
			Go to <b><a Style="color: red;" href="compiler.jsp">Compiler</a></b>
			Section
		</center>

	</div>
</body>
</html>



<%
	}
%>
