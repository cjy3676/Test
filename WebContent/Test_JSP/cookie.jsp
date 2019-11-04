<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<%
		Cookie cookie = new Cookie("name", "ironman");
        /* cookie.getName(); => name
	       cookie.getValue(); => ironman */
	    cookie.setMaxAge(300);
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("name","spiderman");
	    cookie.setMaxAge(300);
		response.addCookie(cookie2);
	%>