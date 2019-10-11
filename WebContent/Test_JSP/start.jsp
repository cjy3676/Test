<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 접속한 사람의 숫자를 저장하는 변수를 생성 
     setAttribute("변수명") : 변수의 값을 가져오기
     removeAttribute("변수명") : 해당변수를 삭제
     getAttributeNames() : 변수의 이름을 가져오기-->
<%
  // application객체의 num변수를 만들고 0으로 초기화
  application.setAttribute("num", 0);
%>
</body>
</html>