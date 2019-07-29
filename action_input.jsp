<html>
	<body>
<%!
	String suname,spass;
%>

	<%

	suname=request.getParameter("uname");
	spass=request.getParameter("pass");
	out.println("Usernmae = "+suname+" Password = "+spass);

	%>
	</body>
</html>