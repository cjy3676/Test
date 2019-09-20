<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  out.print(application.getInitParameter("logEnabled"));
  out.print(application.getInitParameter("debugLevel"));
%>
현재 홈페이지의 주소는 <%=application.getInitParameter("juso")%>
<hr>
<%
  Enumeration enu = application.getInitParameterNames();
  while(enu.hasMoreElements()){
	  out.print(enu.nextElement()+"<p>");
  }
%>
</body>
</html>