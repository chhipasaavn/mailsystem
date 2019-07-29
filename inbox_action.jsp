<%@ page  import="java.sql.*" %>

<form action="totrash_action.jsp" method="post">
	<b>Sent mails</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Delete">
	<% 
		//int count_1 = 0;
		try{	
				String username=(String)session.getAttribute("user");
				String NULL="";
				Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				System.out.print(username);
				st = con.createStatement();
				rs = st.executeQuery("select * from mail where EMAIL_ID='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							
							i = rs.getInt("sn");
							out.println("<tr><td><input type=checkbox name='c' value="+i+"></td><td>To:&nbsp;<b>"+rs.getString("to1")+"</b></td><td>Sub:&nbsp;<b>"+rs.getString("subject")+"</b></td><td><div style='height:20px; overflow:hidden'>"+rs.getString("message")+"</div></td></tr>");
							//count_1++;
							
						}
				out.println("</table>");	
		}

		catch(Exception e){
		out.println(e);
	}

	//session.setAttribute("Noo",count_1);

	%>	
</form>