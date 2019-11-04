<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- cookie.jsp -->
 <%
   Cookie cookie=new Cookie("name","batman");
   cookie.setMaxAge(300);
   response.addCookie(cookie);
   Cookie cookie2=new Cookie("name2","superman");
   cookie.setMaxAge(300);
   response.addCookie(cookie2);
%>
