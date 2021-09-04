<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Tinh chu vi va Dien Tich</h1> 
	<hr>
	<form action="TamGiacServlet" method="post">
		<input type="text" name="a" placeholder="Canh a" /> <br /> <br />
		<input type="text" name="b" placeholder="Canh b" /> <br /> <br />
		<input type="text" name="c" placeholder="Canh c" /> <br /> <br />
		
		<input type="submit" formaction="chuvi" value="Tinh Chu Vi" />
		<input type="submit" formaction="dientich" value="Tinh Dien tich" />
	</form>
	<hr>
	<h3>${ message }</h3>
</body>
</html>