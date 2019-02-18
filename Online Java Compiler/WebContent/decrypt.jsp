

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!-- get session value -->

<%
	String uname = (String) session.getAttribute("user");
	if (uname != null) {
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Compiler - Decryption</title>


<link rel="stylesheet" href="rsa.css" />
<link rel="stylesheet" href="menu.css" />


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
			<%=session.getAttribute("user")%>
		</h3>
		<br>

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
	<div class="subback">
		<div class="decrypt">Decryption Process</div>
		<div class="decryptfile">
			<!-- 			<form name="dec" action="Decresponse.jsp" method="post">
 -->
			<form name="dec" action="decfile" method="post">

				<table cellspacing="15px" align="center">
					<tr>
						<th>Enter N Value:</th>
						<td><input type="text" value="" name="nvalue"></td>
					</tr>
					<tr>
						<th>Enter the Secret Key:</th>
						<td><input type="text" value="" name="key"></td>
					</tr>
					<tr>
						<h4 style="color: red">${msg}</h4>


						<td colspan="2"><hr /> <br> <b>Select source File:</b></td>
					</tr>
					<tr>
						<td colspan="2"><input type="file" value="Browse"
							name="sfile" size="25%"></td>
					</tr>

					<tr>
						<td colspan="2"><input type="submit" value="Decrypt"
							name="decrypt"></td>
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
<%-- <jsp:forward page="index.jsp"/> --%>

<%
	}
%>
