<%@ page import="java.sql.*" %>

<%! 
	String To,Cc,Bcc,Subject,Message;
%>
<form>
<% To = request.getParameter("to1");
	Cc = request.getParameter("cc");
	Bcc = request.getParameter("bcc");
	Subject = request.getParameter("subject");
	Message = request.getParameter("message");

	String username=(String)session.getAttribute("user");
	

	try{
		Connection con;
		PreparedStatement ps;
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");

		ps = con.prepareStatement("insert into mail(EMAIL_ID,TO1,CC,BCC,SUBJECT,MESSAGE) values('"+username+"','"+To+"','"+Cc+"','"+Bcc+"','"+Subject+"','"+Message+"')");
		
		ps.executeUpdate();
		con.close();
		ps.close();		
		out.println("Mail sent successfully !!");				
	}

	catch(Exception e){
	out.println(e);
	}

%>


</form>