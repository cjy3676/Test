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
  /* application 객체의 num변수의 값을 1증가 */
  // 1. 현재의 num의 값을 가져오기
  Integer aa = (Integer)application.getAttribute("num");
  aa++;
  application.setAttribute("num",aa);
  
  response.sendRedirect("index.jsp");
%>
</body>
</html>