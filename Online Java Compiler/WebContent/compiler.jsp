
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
<title>Java Compiler</title>


<link rel="stylesheet" href="menu.css" />
<link rel="stylesheet" href="panels.css" />

<script src="compiler.js" type="text/javascript"></script>

<script src="jquery.js" type="text/javascript"></script>
<script src="jeasing.js" type="text/javascript"></script>
<script src="menujs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".createflip").click(function() {
			$(".createpanel").slideToggle("slow");
		});
		$(".compileflip").click(function() {
			$(".compilepanel").slideToggle("slow");
		});
	});
</script>
</head>
<body>

	<div class="header">JavaCompiler</div>
	<div class="cap">with security editor</div>
	<div>
		<h3 style="color: white; position: absolute; left: 80%">
			Welcome
			<%=uname%>
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


	<div class="subback">
		<h3
			style="position: absolute; top: 0%; left: 10%; color: white; background: #9b3b81; padding: 0%;">Click
			on the panel to show and hide.</h3>
		<div class="createpanel">
			<br>
			<br>
			<p>Enter the Java Code in the Editor</p>

			<form name="create" action="savefile" onSubmit="return createfile();">
				<textarea cols="75" rows="20%" name="javacode"></textarea>
				<br>
				<br>
				<p>Enter the File Name:</p>
				<input type="text" value="" name="filename"><br>
				<br> <input type="submit" value="Save" name="save"><br>
			</form>

			Please click on the header of the panel to hide it after saving the
			java file.
		</div>

		<p class="createflip">Create java File</p>

		<div class="compilepanel">
			<br>
			<br>
			<br> <b>Note:</b>Input as Java File...<br>
			<br>
			<br>

			<form name="compile" action="filecompiled.jsp"
				onSubmit="return compilefile();">
				<b>Select Java File:</b><br> <input type="text" value=""
					name="javafile"><br>
				<br> <input type="submit" value="Compile" name="compile">
			</form>
		</div>
		<p class="compileflip">Compile java File</p>
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
