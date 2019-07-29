<%@ page  import="java.sql.*" %>

<form action="trash_delete_action.jsp" method="post">
	<b>Trash</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Delete Forever">
	<% 
		try{	
				String username=(String)session.getAttribute("user");
				Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from trash where to1='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							
							i = rs.getInt("sn");
							out.println("<tr><td><input type=checkbox name='d' value="+i+"></td><td><b>"+rs.getString("EMAIL_ID")+"</b></td><td style='color:blue'><b>"+rs.getString("subject")+"</b></td><td><div style='height:20px; overflow:hidden'>"+rs.getString("message")+"</div></td></tr>");
							
	  //sent deleted items to trash						
						}
				out.println("</table>");

				/////
				rs = st.executeQuery("select * from trash where EMAIL_ID='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int j;
							while(rs.next()){
							
							j = rs.getInt("sn");
							out.println("<tr><td><input type=checkbox name='d' value="+j+"></td><td><b>"+rs.getString("to1")+"</b></td><td style='color:blue'><b>"+rs.getString("subject")+"</b></td><td><div style='height:20px; overflow:hidden'>"+rs.getString("message")+"</div></td></tr>");
							
							
						}
				out.println("</table>");	
		}

		catch(Exception e){
		out.println(e);
	}



	%>
	
	
</form>