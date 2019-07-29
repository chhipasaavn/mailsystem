<%@ page import="java.sql.*" %>
<%! String values[]; %>
<% if(request.getParameterValues("c")==null)
	response.sendRedirect("inbox_1_action.jsp");
	else
	{	
	values=(String[])request.getParameterValues("c");
	for(int i=0;i<values.length;i++)
  {
	
	try
	{
		Connection con;
		PreparedStatement ps;

		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

		con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");

		ps=con.prepareStatement("insert into trash select * from mail where sn="+values[i]);
		ps.executeUpdate();
		

		ps=con.prepareStatement("delete from mail where sn="+values[i]);
		ps.executeUpdate();
		
	
	}
	catch(Exception e)
	{	
		out.println(e);		
	}
		
  }
	response.sendRedirect("inbox_1_action.jsp");

  
	}
	
%>
