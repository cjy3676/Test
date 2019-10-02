<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shopping_site.test.member" %>    
<%@ page import="shopping_site.test.Array2"%>
<%@ page import="java.util.*"%>
    
<!DOCTYPE html>
<meta charset="UTF-8">
<%
   ArrayList<member> list = Array2.view_member();
   
   for(int i=0; i<list.size(); i++) {
	   out.print(list.get(i).getName());
	   out.print(list.get(i).getAge());
	   out.print("<p>");
   }
%>