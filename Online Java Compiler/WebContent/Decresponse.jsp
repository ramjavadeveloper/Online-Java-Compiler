<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%

String uname;
uname = (String) session.getAttribute("user");

	try {
		
		

		String d = request.getParameter("key");
		String n = request.getParameter("nvalue");
		String sfile=request.getParameter("sfile");
		//String mess= session.getValue("emsg").toString();
		String mess;
		File file = new File("C:\\"+uname+"\\"+sfile);

		BufferedReader br = new BufferedReader(new FileReader(file));

		/* while ((mess = br.readLine()) != null)

		{
			System.out.println("mess=" + mess);
		} */
		mess=br.readLine();
		
		//out.println(mess);

		String ct = mess;
		System.out.println("ct=" + ct);

		StringTokenizer st = new StringTokenizer(ct, "$");

		String ctmsg = st.nextToken();
		String dchk = st.nextToken();
		String nchk = st.nextToken();
		String pt = "";

		if ((d.equalsIgnoreCase(dchk)) && (n.equalsIgnoreCase(nchk))) {
			StringTokenizer st1 = new StringTokenizer(ctmsg, "#");
			while (st1.hasMoreTokens()) {
				String m = st1.nextToken();
				int imsg = Integer.parseInt(m);
				imsg = imsg / 16;
				char c = (char) imsg;
				pt = pt + c;
			}
			//session.putValue("dmsg", pt);
			request.setAttribute("dmsg",pt);
			RequestDispatcher rd = request.getRequestDispatcher("decryptresult.jsp");
			rd.forward(request, response);

			/* response.sendRedirect("decryptresult.jsp"); */
		}

		else {

			request.setAttribute("msg", "incorrect file name or D and N value.");
			RequestDispatcher rd = request.getRequestDispatcher("decrypt.jsp");
			rd.forward(request, response);
			/* response.sendRedirect("decrypt.jsp");
			*/
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>