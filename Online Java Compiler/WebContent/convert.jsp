<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- get session value -->

<%
	String uname = (String) session.getAttribute("user");
	if (uname != null) {
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>text to audio</title>
</head>

<link rel="stylesheet" href="menu.css" />
<link rel="stylesheet" href="rsa.css" />

<script src="rsa.js" type="text/javascript"></script>

<script src="jquery.js" type="text/javascript"></script>
<script src="jeasing.js" type="text/javascript"></script>
<script src="menujs.js" type="text/javascript"></script>
</head>
<body>
	<div class="header">JavaCompiler</div>
	<div class="cap">with security editor</div>
	<div>
		<h3 style="color: white; position: absolute; left: 80%">
			Welcome<br>
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
					<a href="api.jsp">API Info</a>
				</p>
				<p class="subtext">Get the API information in Java</p>
			</li>
			</li>
			<li class="purple">
				<p>
					<a href="convert.jsp.jsp">convert</a>
				</p>
				<p class="subtext">text to audio</p>
			</li>
			<li class="purple">
				<p>
					<a href="help.jsp">Help</a>
				</p>
				<p class="subtext">Read the FAQs...</p>
			<li class="purple">
				<p>
					<a href="logout">Logout</a>
				</p>
				<p class="subtext">Please logout Here...</p>
			</li>
		</ul>

	</div>
	<div class="subback">

		<div class="content2">

			<form method="get" action="convert">

				<table align="center">
					<tr>
						<td align="center"><textarea rows="28" name="itxt" cols="56"></textarea></td>
					</tr>

					<tr>
						<td align=center><hr /> <input type="submit" name="sp"
							value="Speak"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>

<%
	}

	else {
%>
<script type="text/javascript">
	alert("Please Login First");
	window.location.href = "index.jsp";
</script>
<%--  <jsp:forward page="index.jsp"/> --%>


<%
	}
%>

