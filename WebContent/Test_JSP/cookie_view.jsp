<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- cookie_view.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*     Cookie[] cookie=request.getCookies(); // 사용자의 컴에서 쿠키를 읽어오라
    // 쿠키를 읽어오면 항상 실제저장된 데이터 보다 1이 크다(마지막 요소 X)
    out.print(cookie.length); // 쿠키의 갯수
    
    out.print(cookie[0].getName());
    out.print("<p>");
    out.print(cookie[1].getName()); 
    out.print("<p>");
    out.print(cookie[2].getName()); */ 
    
	Cookie[] cookie = request.getCookies();
    
    out.print(cookie.length);
    out.print(cookie[0].getName()+cookie[0].getValue());
    out.print("<p>");
    out.print(cookie[1].getName()+cookie[1].getValue());	
%>
</body>
</html>












