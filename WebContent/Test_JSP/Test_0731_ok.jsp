<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% 
String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb = "root";
String cc = "1234";
Connection conn = DriverManager.getConnection(aa, bb, cc);
Statement stmt = conn.createStatement();

request.setCharacterEncoding("utf-8");
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
