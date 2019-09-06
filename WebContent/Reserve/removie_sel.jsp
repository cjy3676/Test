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

#plus {
    font-size: 20px;
    display: inline;
    cursor:pointer;
}

#n_tot {
    display: inline;  
}

#minus {
    font-size: 20px;
    display: inline;
    cursor:pointer;
}

.num {
	width: 20px;
	height: 20px;
	border: 2px solid #380620;
	text-align: center;
	cursor:pointer;
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
	height: 480px;
	background: #ebebeb;
	text-align: center;
	padding-top: 5px;
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
<script>
/* window.onload = function() {
	document.getElementById("n_tot").innerText = "n";
} */
	function n_change(n) {
		var tot = parseInt(document.getElementById("n_tot").innerText);
		
		if (n == 0) {
			tot++;
			document.getElementById("n_tot").innerText = tot;
		} 
		else if (tot != 1) {
			tot--;
			document.getElementById("n_tot").innerText = tot;
		}
	}

	function imsi(n) {
		var s = document.getElementsByClassName("num");
		var chk = document.cjy.seat.value;
		if (chk != "") {
			s[chk - 1].style.borderColor = "black";
		}
		document.cjy.seat.value = n;
		s[n - 1].style.borderColor = "red";
	}
</script>
</head>
<body>
<div id="main" align="center">
<form method="post" name="cjy" action="removie_ok.jsp">
<input type="hidden" name="seat">
<input type="hidden" name="movie" value="<%=movie%>">
<input type="hidden" name="theater" value="<%=theater%>">
<input type="hidden" name="date" value="<%=date%>">
<input type="hidden" name="time" value="<%=time%>">
<div id="inf">
<caption><h4>좌석 선택</h4></caption>
<caption><%=movie%> | <%=theater%></caption>
<p>
<caption><%=date%> <%=time%>시</caption>
<div id="plus" onclick="n_change(0)">▲</div>
<div id="n_tot">1</div>
<div id="minus" onclick="n_change(1)">▼</div>
<hr>
<caption>SCREEN</caption>
<table id="tab" width="300" align=center>
<tr><td class="space"></td></tr>
<tr>
<td class="alpha">A</td>
<td onclick="imsi(1)" class="num">1</td>
<td onclick="imsi(2)" class="num">2</td>
<td class="space"></td>
<td onclick="imsi(3)" class="num">3</td>
<td onclick="imsi(4)" class="num">4</td>
<td class="space"></td>
<td onclick="imsi(5)" class="num">5</td>
<td onclick="imsi(6)" class="num">6</td>
</tr>
<tr>
<td class="alpha">B</td>
<td onclick="imsi(7)" class="num">1</td>
<td onclick="imsi(8)" class="num">2</td>
<td class="space"></td>
<td onclick="imsi(9)" class="num">3</td>
<td onclick="imsi(10)" class="num">4</td>
<td class="space"></td>
<td onclick="imsi(11)" class="num">5</td>
<td onclick="imsi(12)" class="num">6</td>
</tr>
<tr>
<td class="alpha">C</td>
<td onclick="imsi(13)" class="num">1</td>
<td onclick="imsi(14)" class="num">2</td>
<td class="space"></td>
<td onclick="imsi(15)" class="num">3</td>
<td onclick="imsi(16)" class="num">4</td>
<td class="space"></td>
<td onclick="imsi(17)" class="num">5</td>
<td onclick="imsi(18)" class="num">6</td>
</tr>
<tr>
<td class="alpha">D</td>
<td onclick="imsi(19)" class="num">1</td>
<td onclick="imsi(20)" class="num">2</td>
<td class="space"></td>
<td onclick="imsi(21)" class="num">3</td>
<td onclick="imsi(22)" class="num">4</td>
<td class="space"></td>
<td onclick="imsi(23)" class="num">5</td>
<td onclick="imsi(24)" class="num">6</td>
</tr>
<tr>
<td class="alpha">E</td>
<td onclick="imsi(25)" class="num">1</td>
<td onclick="imsi(26)" class="num">2</td>
<td class="space"></td>
<td onclick="imsi(27)" class="num">3</td>
<td onclick="imsi(28)" class="num">4</td>
<td class="space"></td>
<td onclick="imsi(29)" class="num">5</td>
<td onclick="imsi(30)" class="num">6</td>
</tr>
</table>
<input id="sub" type="submit" value="save">
</div>
</form>
</div>
</body>
</html>