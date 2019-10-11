<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookie = request.getCookies();
	    
	    out.print(cookie.length);
	    out.print(cookie[0].getName()+cookie[0].getValue());
	    out.print("<p>");
	    out.print(cookie[1].getName()+cookie[1].getValue());	    
	%>
</body>
</html>