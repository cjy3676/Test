<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3307/gibon?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	String id = request.getParameter("id");
	String sql = "update text_board set rnum = rnum + 1 where id="+id;
	stmt.executeUpdate(sql);
	response.sendRedirect("content.jsp?id="+id);
	stmt.close();
	conn.close();
%>