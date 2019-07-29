<%@ page import="java.sql.*" %>

<%! 
	String fname,lname,mobile,dob,mail,pass,cpass;
%>
<form>
<% fname = request.getParameter("fn");
	lname = request.getParameter("ln");
	mobile = request.getParameter("mb");
	dob = request.getParameter("db");
	mail = request.getParameter("usrid");
	pass = request.getParameter("p1");
	cpass = request.getParameter("p2");

	try{
		Connection con;
		PreparedStatement ps;
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");

		ps = con.prepareStatement("insert into signup(FIRST_NAME,LAST_NAME,MOBILE,D_O_B,EMAIL_ID,PASSWORD,CPASSWORD) values('"+fname+"','"+lname+"','"+mobile+"','"+dob+"','"+mail+"','"+pass+"','"+cpass+"')");
		
			if(pass.equals(cpass)){
										ps.executeUpdate();
										con.close();
										ps.close();
							out.println("Account Created Successfully !");	
							//create a html button here rediecting to login to gmail	
							out.println("<input type=button value='GO to Login page' onclick=window.location.href='login.htm'>");
								
			}	
			else{
			out.print("Password not matched !! Enter your Password Again :(");

			}						
	}

	catch(Exception e){
	out.println(e);
	}

%>


</form>