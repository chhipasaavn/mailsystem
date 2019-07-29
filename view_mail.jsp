<%@ page  import="java.sql.*" %>

<form action="inbox_1_action.jsp" method="post">
<%! String s1="read"; %>
	<% String s2;
	
	 s2=request.getQueryString();
	out.println(s2);
		//int count = 0;
		try{	
				//int i=(int)session.getAttribute("serial");
			
				Connection con;
				Statement st;
				ResultSet rs;
			
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				
				st = con.createStatement();
				rs = st.executeQuery("select * from mail where SN='"+s2+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							
							
							while(rs.next()){
							
							
							out.println("<table><tr><td><b>To:</b></td><td>"+rs.getString("to1")+"</td></tr><tr><td><b>From:</b></td><td>"+rs.getString("EMAIL_ID")+"</td></tr><tr><td><b>Cc:</b></td><td>"+rs.getString("cc")+"</td></tr><tr><td><b>Bcc:</b></td><td>"+rs.getString("bcc")+"</td></tr><tr><td><b>Subject:</b></td><td>"+rs.getString("subject")+"</td></tr><tr><td><b>Message:</b></td><td>"+rs.getString("message")+"</td></tr>");
							
						}
				out.println("</table>");
				


		}
		

		catch(Exception e){
		out.println(e);
	}
	try{
			Connection con;
			PreparedStatement ps;
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
	ps=con.prepareStatement("update mail set STATUS='"+s1+"' where SN='"+s2+"'");
	ps.executeUpdate();
	ps.close();
		}
		catch(Exception e1){
		out.println(e1);
	}
	%>
	
	<input type="submit" name="back" value="Back">
</form>