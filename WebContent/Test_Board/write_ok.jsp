<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Test.Dto.Dto"%>
<%@ page import="Test.Command.Write"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="Test.Dto.Dto">
		<jsp:setProperty name="dto" property="*" />
	</jsp:useBean>
	
	<%
		Write w = new Write();
	    w.write(dto);
		response.sendRedirect("list.jsp");
	%>
</body>
</html>