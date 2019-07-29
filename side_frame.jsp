<!DOCTYPE html>
<html>
<head>
	

	<meta http-equiv="refresh" content="1">

</head>
<body>
<%@ page  import="java.sql.*" %>

<%    //int count=(int)session.getAttribute("No");
	  String username=(String)session.getAttribute("user");

	out.println("<a href = 'compose.jsp' target='main'>Compose Mail</a>");
      try{int count=0;
     Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from mail where to1='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							count++;
							
						}
      out.println("<br /><br /><a href = 'inbox_1_action.jsp' target = 'main'>Inbox("+count+")</a>");
  }
  catch(Exception e)
  {

  }
      //int count_1=I(int)session.getAttribute("Noo");
      
      try{int count=0;
     Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from mail where email_id='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							count++;
							
						}
      out.println("<br /><br /><a href = 'inbox_action.jsp' target = 'main'>Sent("+count+")</a>");
  }
  catch(Exception e)
  {

  }
     // out.println("<br /><br /><a href = 'inbox_action.jsp' target = 'main'>Sent("+count+")</a>");
      try{int count=0;
     Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from trash where email_id='"+username+"' or to1='"+username+"'");
				out.println("<table border=1  rules=rows cellspacing=2 cellpadding=10>");
							int i;
							while(rs.next()){
							count++;
							
						}
     out.println("<br /><br /><a href = 'trash_htm.jsp' target = 'main'>Trash("+count+")</a>");
  }
  catch(Exception e)
  {

  }
     // out.println("<br /><br /><a href = 'trash_htm.jsp' target = 'main'>Trash</a>");
%>   
</body>
</html>