<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 25m -->    
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	String aa = "jdbc:mysql://localhost:3307/gibon?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	request.setCharacterEncoding("utf-8");
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String hero = request.getParameter("hero");
	

	String sql = "insert into member(title,name,content,phone1,phone2,phone3,hero)";
	sql = sql + "values('"+title+"','"+name+"','"+content+"','"+phone1+"','"+phone2+"','"+phone3+"','"+hero+"')";

	stmt.executeUpdate(sql);
	response.sendRedirect("list.jsp"); 
	
	stmt.close();
	conn.close();
%>