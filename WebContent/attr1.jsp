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
/* 		request, session, application
		setAttribute(), getAttribute(), removeAttribute() 
		변수만들기                     변수값가져오기                변수 삭제                           */
		
		request.setAttribute("name", "모건 스타크");
		session.setAttribute("name", "토니 스타크");
		application.setAttribute("name", "하워드 스타크");
	%>
	<%
		out.print(request.getAttribute("name") + "<p>");
		out.print(session.getAttribute("name") + "<p>");
		out.print(application.getAttribute("name") + "<p>");
	%>
</body>
</html>