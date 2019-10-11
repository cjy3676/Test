<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = URLEncoder.encode("아이언맨", "UTF-8");
	%>
	Test_1002.jsp 입니다.<p>
	
		<jsp:include page="include.jsp" flush="false">
			<jsp:param value="<%=name%>" name="name" />
			<jsp:param value="33" name="age" />
			<jsp:param value="Seoul" name="addr" />
		</jsp:include>
</body>
</html>