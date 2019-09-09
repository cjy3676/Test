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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String movie = request.getParameter("movie");
	String theater = request.getParameter("theater");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String seat = request.getParameter("seat");
	String n_tot = request.getParameter("n_tot");
	
	String sql = "insert into reserve_test(id,pwd,movie,theater,date,time,seat,n_tot)";
	sql = sql + " value(?,?,?,?,?,?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pwd);
	pstmt.setString(3, movie);
	pstmt.setString(4, theater);
	pstmt.setString(5, date);
	pstmt.setString(6, time);
	pstmt.setString(7, seat);
	pstmt.setString(8, n_tot);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("removie_view.jsp");
%>   