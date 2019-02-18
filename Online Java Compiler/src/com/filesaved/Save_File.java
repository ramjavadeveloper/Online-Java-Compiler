package com.filesaved;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Save_File extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uname;
HttpSession session=request.getSession();
	    uname=(String)session.getAttribute("user");
	    //System.out.println("user...."+uname);
	    FileOutputStream fos;
	    String s=request.getParameter("javacode");
	    String ff=request.getParameter("filename");
	    //String dir=request.getRemoteHost();
	    String dir="";
	   // System.out.println(dir);
	    File kk=new File("C:/");
	    boolean bb=kk.mkdir();
	    //System.out.println(kk);
	    File kk1=new File("C:/"+uname);
	    boolean bb1=kk1.mkdir();
	    //System.out.println(kk1);
	    fos=new FileOutputStream(kk1+"/"+ff);
	    int end=s.length();
	    int start=0;
	    while(start<end)
	    {
		fos.write(s.charAt(start));
	    start++;	
	    }
		fos.close();
		RequestDispatcher rd=request.getRequestDispatcher("filesaved.jsp");
		rd.forward(request, response);

	}

}
