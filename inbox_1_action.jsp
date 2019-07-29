<%@ page  import="java.sql.*" %>
<html>
<head>

	<!--<meta http-equiv="refresh" content="1">-->

</head>
<form action="totrash_action_1.jsp" method="post">
	<b>Received mails(Inbox)</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Delete">
	<% 
		//int count = 0;
		try{	
				String username=(String)session.getAttribute("user");
				String NULL="";
				Connection con;
				Statement st;
				ResultSet rs,rs1;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				if(username==NULL)
				{
					con.close();
				}
				st = con.createStatement();
				rs = st.executeQuery("select * from mail where to1='"+username+"'");
				//rs1 = st.executeQuery("select * from mail where to1='"+username+"' and STATUS='read'");
				out.println("<table border=1 rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							
							i = rs.getInt("sn");
							
							
							
								out.println("<tr><td><input type=checkbox name='c' value="+i+"></td><td>From:&nbsp;<b><a href=view_mail.jsp?"+rs.getInt("SN")+">"+rs.getString("email_id")+"</b></td><td>Sub:&nbsp;<b>"+rs.getString("subject")+"</b></td><td><div style='height:20px; overflow:hidden'>"+rs.getString("message")+"</div></td></tr>");
							//count++;
							//session.setAttribute("serial",i);
						}
				out.println("</table>");


				
				/*out.println("<table border=1 rules=rows cellspacing=2 cellpadding=10>");
							int j;
							while(rs1.next()){
							
							j = rs1.getInt("sn");
							
							
							
								out.println("<tr><td><input type=checkbox name='c' value="+j+"></td><td>From:&nbsp;<a href=view_mail.jsp?"+rs.getInt("SN")+">"+rs.getString("email_id")+"</td><td>Sub:&nbsp;"+rs.getString("subject")+"</td><td><div style='height:20px; overflow:hidden'>"+rs.getString("message")+"</div></td></tr>");
							//count++;
							//session.setAttribute("serial",i);
						}
				out.println("</table>");*/
				


		}
		

		catch(Exception e){
		out.println(e);
	}
/*	finally{
	out.println(count);
}session.setAttribute("No",count);
*/
	%>
	
	
</form>
</html>