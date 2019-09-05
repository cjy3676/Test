<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	// DB 연결및 쿼리를 사용할
	String aa = "jdbc:mysql://localhost:3307/gibon?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	// 입력값 가져오기
	request.setCharacterEncoding("utf-8");
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String[] hero = request.getParameterValues("hero");
	String he = "";
	for(int i=0;i<hero.length;i++)
	{
		he=he+hero[i]+",";
	}
	String address = request.getParameter("address");
	// 쿼리 작성
	String sql = "insert into text_board(name,title,content,email,gender,hero,address,writeday)";
	sql = sql + "values('"+name+"','"+title+"','"+content+"','"+email+"',"+gender+",'"+he+"','"+address+"','"+writeday+"')";
	// 쿼리 실행
	stmt.executeUpdate(sql);
	// list.jsp로 이동
	response.sendRedirect("list.jsp");
	stmt.close();
	conn.close();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>