<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><!--  main.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
       String tt="target3.jsp";
       String test=request.getParameter("test");
  %>
    안녕하세요!! main_1004.jsp 입니다.
    <jsp:forward page="<%=tt%>">
      <jsp:param value="1234" name="num"/>
    </jsp:forward>
</body>
</html>


