<%@ page import="java.sql.*"
%>

<%! String username,password;
%>

<%  username = request.getParameter("eid");
	password = request.getParameter("epass");

	try{
			Connection con;
			Statement st;
			ResultSet rs;
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			con = DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\sawan\\maildb_1.accdb");
			st = con.createStatement();
			rs = st.executeQuery(" select EMAIL_ID,PASSWORD from signup where EMAIL_ID ='"+username+"' and PASSWORD ='"+password+"'");

				if(rs.next()){
					session.setAttribute("user",username);
					response.sendRedirect("inbox.jsp");
					//response.sendRedirect("top_frame.jsp");
							//instead of this line send redirect to Gmail Home page
				}
				else{
						out.println("Username and password incorrect !");
				}
	}
	catch(Exception e){
						out.println(e);

			}

%>	