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
  request.setCharacterEncoding("UTF-8");
  // form에 입력된 값을 가져오기
  
  out.print(request.getParameter("name")+"<p>"); // 폼에 name가 일치하는폼에 입력값
  out.print(request.getParameter("juso")+"<p>");
  // getParameter("폼이름") => 폼이름이 복수라도 1개만 가져온다
	
  // 폼이름이 복수일때 선택된 모든것을 가져온다	  
  String[] hero = request.getParameterValues("hero"); 
  for(int i=0; i<hero.length; i++){
	  out.print(hero[i]+" ");
  }
  out.print("<p>");
  // getParameterValues()는 리턴값이 배열 => 복수개의 값을 배열로 전달
  
  Enumeration penum = request.getParameterNames();
  while(penum.hasMoreElements()){ // 존재 true, 없으면 false
	  out.print(penum.nextElement().toString()+" ");
  }
  out.print("<p>");
  
  Map map = request.getParameterMap();
  String[] pname = (String [])map.get("name");
  out.print(pname[0]);
  
  String[] pjuso = (String [])map.get("juso");
  out.print(pjuso[0]);
  
  String[] phero = (String [])map.get("hero");
  out.print(phero[0]);
%>
</body>
</html>