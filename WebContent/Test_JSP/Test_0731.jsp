<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Test_0731_ok.jsp">
	<div>
		이름 <input type="text" name="name">
	</div>
	<p>
	
	<div>
		제목 <input type="text" name="title">
	</div>
	<p>
	
	<div>
		주민등록번호 <input type="text" name="num1" maxlength="6"> 
		- <input type="text" name="num2" maxlength="1">
	</div>
	<p>
	
	<div>
		흡연 비흡연 <input type="radio" name="smoke" value="0"> 
		흡연 <input type="radio" name="smoke" value="1">
	</div>
	<p>
	
	<div>
		주소 <select name="address">
			<option>선택</option>
			<option>평안도</option>
			<option>함경도</option>
			<option>황해도</option>
			<option>강원도</option>
			<option>경기도</option>
			<option>충청도</option>
			<option>전라도</option>
			<option>경상도</option>
		</select>
	</div>
	<p>
	<div>
	    비밀번호 <input type="password" name="password">
	</div>
	<p>
	<div><input type="submit" value="click"> </div>
</body>
</html>