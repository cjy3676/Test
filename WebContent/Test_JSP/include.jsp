<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%  
    String name = URLDecoder.decode(request.getParameter("name").toString(),"UTF-8");
    String age = request.getParameter("age");
    String addr = request.getParameter("addr");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	hello!! it's include.jsp 
	name : <%=name%><p>
    age : <%=age%><p>
	address : <%=addr%>
</body>
</html>