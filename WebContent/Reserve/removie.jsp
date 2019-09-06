<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
select {
height: 25px;
}
input {
height: 20px;
}
</style>
</head>
<body>
<form method="post" action="removie_sel.jsp">
<caption><h3>영화 예매</h3></caption>
아이디<input type="text" name="id">
비밀번호<input type="text" name="pwd">
<hr>
<select name="movie">
<option>영화를 선택 하세요</option>
<option value="아이언맨">아이언맨</option>
</select>
<select name="theater">
<option>영화관을 선택 하세요</option>
<option value="용산">용산</option>
</select>
<select name="date">
<option>날짜을 선택 하세요</option>
<option value="2019-09-04">2019-09-04</option>
</select>
<select name="time">
<option>시간을 선택 하세요</option>
<option value="11">11시</option>
</select><p>
<input type="submit" value="next">
</form>
</body>
</html>