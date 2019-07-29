<%@ page import="java.sql.*" %>

<%! int rno;
%>

<% rno=Integer.parseInt(request.getParameter("r1"));
//out.println("VAL="+ rno);
try{
	Connection con;
	PreparedStatement ps;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	con = DriverManager.getConnection("jdbc:ucanaccess://C:\\lib\\db_1.accdb");
	ps = con.prepareStatement("delete from dept where Enroll_no = "+rno);
	ps.executeUpdate();
	con.close();
	ps.close();

}

catch(Exception e){
	out.println(e);
}
response.sendRedirect("delete_htm.jsp");
%>