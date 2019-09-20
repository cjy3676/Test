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
		out.print(request.getAttribute("name") + "<p>");
		out.print(session.getAttribute("name") + "<p>");
		out.print(application.getAttribute("name") + "<p>");
	%>
</body>
</html>