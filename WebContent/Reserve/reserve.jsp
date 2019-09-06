<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- database name = reserve, table name = reserve_test -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="reserve_sel.jsp">
<caption><h3>정보 입력</h3></caption>
이름<input type="text" name="name"><p>
전화번호<input type="text" name="phone"><p>
예약날짜<input type="number" name="year">-
<input type="number" name="month">-
<input type="number" name="day"><p>
시간<select name="time">
<option value="14">2시</option>
</select><p>
인원<select name="n_tot">
<option value="1">1명</option>
</select><p>
<input type="submit" value="next">
</form>
</body>
</html>