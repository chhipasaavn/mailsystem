<html>  
	<body> 
		<form action="logoutprocess.jsp" method="post" target="_top">
			
						<p align="right"> 
	<%   
  
		String username=(String)session.getAttribute("user");  
		out.println(username);  
  	%>  
  		&nbsp;&nbsp;|&nbsp;&nbsp;
		<input type="submit" value="Logout">
			</p>
			<p align="left" style="font-size: 40"><img src="inbox.png" width="60" height="60"><b>Sawan-</b>mail</p>&nbsp;&nbsp;
		</form>
	</body>  
</html>