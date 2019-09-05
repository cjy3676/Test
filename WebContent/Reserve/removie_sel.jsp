<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%
/*  String aa = "jdbc:mysql://localhost:3307/reserve?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement(); */
	
	request.setCharacterEncoding("UTF-8");
	String movie = request.getParameter("movie");
	String theater = request.getParameter("theater");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	border: 0;
}

.num {
	width: 20px;
	height: 20px;
	border: 2px solid #380620;
	text-align: center;
}

.alpha {
	width: 20px;
	height: 20px;
	font-weight: bold;
	text-align: center;
}

.space {
	width: 20px;
	height: 20px;
}

#tab {
	margin-right: 115px;
}

#inf {
	width: 500px;
	height: 400px;
	background: #ebebeb;
	text-align: center;
}

#main {
	width: 100%;
	height: 100%;
}

#sub {
	margin-top: 40px;
	height: 30px;
}
</style>
</head>
<body>
<div id="main" align="center">
<form method="post" name="cjy" action="removie_ok.jsp">
<input type="hidden" name="movie" value="<%=movie%>">
<input type="hidden" name="theater" value="<%=theater%>">
<input type="hidden" name="date" value="<%=date%>">
<input type="hidden" name="time" value="<%=time%>">
<div id="inf">
<caption><h4>좌석 선택</h4></caption>
<caption><%=movie%> | <%=theater%></caption>
<p>
<caption><%=date%> <%=time%>시</caption>
<hr>
<caption>SCREEN</caption>
<table id="tab" width="300" align=center>
<tr><td class="space"></td></tr>
<tr>
<td class="alpha">A</td>
<td class="num">1</td>
<td class="num">2</td>
<td class="space"></td>
<td class="num">3</td>
<td class="num">4</td>
<td class="space"></td>
<td class="num">5</td>
<td class="num">6</td>
</tr>
<tr>
<td class="alpha">B</td>
<td class="num">1</td>
<td class="num">2</td>
<td class="space"></td>
<td class="num">3</td>
<td class="num">4</td>
<td class="space"></td>
<td class="num">5</td>
<td class="num">6</td>
</tr>
<tr>
<td class="alpha">C</td>
<td class="num">1</td>
<td class="num">2</td>
<td class="space"></td>
<td class="num">3</td>
<td class="num">4</td>
<td class="space"></td>
<td class="num">5</td>
<td class="num">6</td>
</tr>
<tr>
<td class="alpha">D</td>
<td class="num">1</td>
<td class="num">2</td>
<td class="space"></td>
<td class="num">3</td>
<td class="num">4</td>
<td class="space"></td>
<td class="num">5</td>
<td class="num">6</td>
</tr>
<tr>
<td class="alpha">E</td>
<td class="num">1</td>
<td class="num">2</td>
<td class="space"></td>
<td class="num">3</td>
<td class="num">4</td>
<td class="space"></td>
<td class="num">5</td>
<td class="num">6</td>
</tr>
</table>
<input id="sub" type="submit" value="save">
</form>
</div>
</div>
</body>
</html>