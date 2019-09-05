<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3307/gibon?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	String sql = "select * from text_board";
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <div>게시판</div>
    <table cellspacing=0 width=800 align=center>
    <a href="write.jsp">글쓰기</a>
    <tr>
    <td>번호</td>
    <td>제목</td>
    <td>글쓴이</td>
    <td>작성일</td>
    <td>조회수</td>
    </tr>
    <%
    while (rs.next()) { 
    %>
    <tr>
    <td><%=rs.getString("id")%></td>
    <td><a href="rnum_add.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title")%></a></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("writeday")%></td>
    <td><%=rs.getString("rnum")%></td>
    </tr>
    <%
    } 
    %>
    </table>
</body>
</html>