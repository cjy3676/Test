<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>    
<%
	String aa = "jdbc:mysql://localhost:3307/reserve?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	request.setCharacterEncoding("UTF-8");
	String seat = request.getParameter("seat");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String reserve_day = request.getParameter("reserve_day");
	String time = request.getParameter("time");
	String n_tot = request.getParameter("n_tot");
	
	String sql = "insert into reserve_test(name,phone,reserve_day,time,n_tot,seat)";
	sql = sql + " value(?,?,?,?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	pstmt.setString(3, reserve_day);
	pstmt.setString(4, time);
	pstmt.setString(5, n_tot);
	pstmt.setString(6, seat);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("reserve_view.jsp");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>