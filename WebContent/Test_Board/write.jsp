<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="write_ok.jsp" method="post">
이름<input type="text" name="name"><p>
제목<input type="text" name="title"><p>
내용<textarea rows="5" cols="40" name="content"></textarea><p>
공개여부
<input type="radio" value="0">공개
<input type="radio" value="1">비공개
<input type="submit" value="저장">
</form>
</body>
</html>