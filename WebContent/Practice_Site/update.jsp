<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3307/gibon?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");

	String sql = "select * from member where id=" + id;

	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="update_ok.jsp">
<input type="hidden" name="id" value="<%=id%>">
이름  : <input type="text" name="name" value="<%=rs.getString("name")%>"><p>
제목  : <input type="text" name="title" value="<%=rs.getString("title")%>"><p>
성별 : <% 
		String sung = "";
		switch(rs.getInt("sung"))
		{
		case 1: sung="남자"; break;
		case 2: sung="여자"; break;
		}
		%>
	<%=sung%><p>	
내용 : <textarea name="content" cols="40" rows="5"><%=rs.getString("content")%></textarea><p>
<input type="submit" value="확인"> 
</form>
</body>
</html>