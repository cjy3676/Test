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
		Cookie cookie = new Cookie("name", "ironman");
        /* cookie.getName(); => name
	       cookie.getValue(); => ironman */
	    cookie.setMaxAge(300);
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("name","spiderman");
	    cookie.setMaxAge(300);
		response.addCookie(cookie2);
	%>
</body>
</html>