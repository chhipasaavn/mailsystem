<!DOCTYPE html>
<html>
<head>
	<title>compose mail</title>
</head>
<body>
	<form action="compose_action.jsp" method="post">
		To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="to1"><br><br>
		Cc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cc"><br><br>
		Bcc:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bcc"><br><br>
		Subject:&nbsp;<input type="text" name="subject"><br><br>
		
		Message:&nbsp;<textarea rows = "10" cols = 200 name = "message">
            Enter your message...
         
		</textarea><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Send">

	</form>

</body>
</html>