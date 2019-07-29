<%@ page  import="java.sql.*" %>

<form action="delete_action.jsp" method="post">
	<% 
		try{
				Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\lib\\db_1.accdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from dept");
				out.println("<table border=4 bgcolor=#00FF00 cellspacing=2 cellpadding=10> <tr><th>ROLL NO.</th><th>NAME</th><th>COURSE</th></tr>");
							int i;
							while(rs.next()){
							
							i = rs.getInt("Enroll_no");
							out.println("<tr><td><input type=radio name=r1 value="+i+"></td><td>"+rs.getString("F_name")+"</td><td>"+rs.getString("Course")+"</td></tr>");
						}
				out.println("</table>");	
		}

		catch(Exception e){
		out.println(e);
	}

	%>
	<input type="submit" name="submit" value="DeleteTheRecord">
</form>