

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%
    String x=null;
    String y=null;
    Connection con=null;
    Statement st=null;
    try{
    	System.out.println("1");
    	/* String url="jdbc:oracle:thin:@localhost:1521:xe";
    Class.forName("oracle.jdbc.driver.OracleDriver");
   // System.out.println("2");
    System.out.println(url);
    con=DriverManager.getConnection(url,"system","root"); */
    Class.forName("com.mysql.jdbc.Driver");  //mysql jar added
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javacompiler","root","root"); 
    st=con.createStatement();
    out.println("Connected to DataBase...");
    
    }
    catch(Exception e){
    	e.printStackTrace();
    	
    }
    //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    //Connection con=DriverManager.getConnection("jdbc:odbc:onlinejava","onlinejc","onlinejc");
    
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String qry="select uname,pwd from register where uname='"+uname+"'";
    ResultSet rs=st.executeQuery(qry);
    
    if(rs.next())
    {
        x=rs.getString(1);
        y=rs.getString(2);
    }
    
    if((uname!=null && uname.equals(x))&& (pwd!=null && pwd.equals(y))) 
        {
        
        Cookie cookie1 = new Cookie ("uname",uname);
        Cookie cookie2 = new Cookie ("pwd",pwd);
//cookie1.setMaxAge(365 * 24 * 60 * 60);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
 %>
 
 <jsp:forward page="compiler.jsp"/>
 
 <%
        }
    else
        {
 %>
 
 <jsp:forward page="nouser.jsp"/>
 
 <%
    }
 %>


