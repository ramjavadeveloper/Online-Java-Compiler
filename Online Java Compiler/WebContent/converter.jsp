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
<title>Text Converter</title>
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
					<a href="convert.jsp">Convert</a>
				</p>
				<p class="subtext">text to audio</p>
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
				<p class="subtext">Please logout Here...</p>
			</li>
		</ul>

	</div>
	<div class="subback">

		<div class="content2">

			<form action="converttext" name="convert">

<script type="text/javascript">
						function fun() {
							var text = document.forms['convert']['text'].value;
							
							document.location.href = "converttext?text=" + text;

						}
					</script>
				<!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Group\Tomcat 4.1\webapps\final\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" -->
				<p>
				<table align="center">
					<tr>
						<h3 style="color: red">${msg }</h3>
						
						
						
						<td>Enter Text</td>
						<td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="text" value="${text }" onkeyup="fun()" size="20" autofocus="autofocus" ></td>
					</tr>

					<tr>
						<td>ASCII</td>
						<td align="center"><textarea rows="3" name="ascii" cols="40">${ascii }</textarea></td>

						<%-- <td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="ascii" value="${ascii }"></td> --%>
					</tr>
					<tr>
						<td>BINARY</td>
						<td align="center"><textarea rows="3" name="bin" cols="40">${bin }</textarea></td>

						<%-- <td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="bin" value="${bin }"></td> --%>
					</tr>
					<tr>
						<td>OCTAL</td>
						<td align="center"><textarea rows="3" name="oct" cols="40">${oct }</textarea></td>


						<%-- <td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="oct"  value="${oct}"></td>  --%>
					</tr>
					<tr>
						<td>HEXADECIMAL</td>
						<td align="center"><textarea rows="3" name="hex" cols="40">${hex }</textarea></td>


						<%-- <td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="hex"  value="${hex}"></td>  --%>
					</tr>
					<tr>
						<td>BASE_64</td>
						<td align="center"><textarea rows="3" name="base64" cols="40">${base64 }</textarea></td>


						<%--  <td align="center"><input style="height: 25px; width: 250px;"
							type="text" name="base64"  value="${base64 }"></td> --%>
					</tr>


					<!-- <tr>

						<td align=center><hr /> <input type="submit" name="sp"
							value="Convert Text"></td>


					</tr> -->
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

