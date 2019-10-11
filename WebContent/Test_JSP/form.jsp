<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="request.jsp">
이름 :<input type="text" name="name"><p>
주소 :<input type="text" name="juso"><p>
좋아하는 히어로 :
<input type="checkbox" name="hero" value="h1">아이언맨
<input type="checkbox" name="hero" value="h2">스파이더맨
<input type="checkbox" name="hero" value="h3">토르<p>
<input type="submit" value="submit">
</form>
</body>
</html>