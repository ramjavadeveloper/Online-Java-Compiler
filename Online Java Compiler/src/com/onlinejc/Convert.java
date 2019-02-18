package com.onlinejc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.speech.freetts.Voice;
import com.sun.speech.freetts.VoiceManager;

public class Convert extends HttpServlet {

	private static final String VOICENAME= "kevin16";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("i am in convert");
		String document=request.getParameter("itxt");
		Voice voice;
		VoiceManager vm=VoiceManager.getInstance();
		voice=vm.getVoice(VOICENAME);
		voice.allocate();
		
		try
		{
			voice.speak(document);
			RequestDispatcher rd=request.getRequestDispatcher("text2audio.jsp");
			rd.forward(request, response);
			
			
		}catch(Exception e2)
		{
			e2.printStackTrace();
		}
	
	}
	

}
