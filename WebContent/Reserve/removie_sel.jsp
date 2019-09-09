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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
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
	 
	var tot = 1; // 선택된 인원
	var s_tot = 0; // 예약할 인원
	function n_change(n) {
		tot = parseInt(document.getElementById("n_tot").innerText);
		if (n == 0) {
			tot++;
			document.getElementById("n_tot").innerText = tot;
			document.cjy.n_tot.value = tot;
		} 
		else if (tot != 1) {
			tot--;
			document.getElementById("n_tot").innerText = tot;
			document.cjy.n_tot.value = tot;
		}
	}

	function check(n) {
		//alert(tot+" "+s_tot);
		var n2 = n + "";
		if (n2.length == 1)
			n2 = "0" + n2;
		var s = document.getElementsByClassName("num"); // 좌석이름
		var seat = document.cjy.seat.value; // 현재 선택된 자석
		if (s_tot < tot && seat.indexOf(n2) == -1) {
			seat = seat + "," + n2;
			s[n - 1].style.borderColor = "red";
			s_tot++;
			document.cjy.seat.value = seat;
		} 
		else {
			if (seat.indexOf(n2) != -1) {
				seat = seat.replace("," + n2, "");
				s[n - 1].style.borderColor = "black";
				s_tot--;
				document.cjy.seat.value = seat;
			}
		}
		document.cjy.seat.value = seat;
	}
</script>
</head>
<body> 
<div id="main" align="center">
<form method="post" name="cjy" action="removie_ok.jsp">
<input type="hidden" name="seat">
<input type="hidden" name="n_tot">
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="pwd" value="<%=pwd%>">
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
<td onclick="check(1)" class="num">1</td>
<td onclick="check(2)" class="num">2</td>
<td class="space"></td>
<td onclick="check(3)" class="num">3</td>
<td onclick="check(4)" class="num">4</td>
<td class="space"></td>
<td onclick="check(5)" class="num">5</td>
<td onclick="check(6)" class="num">6</td>
</tr>
<tr>
<td class="alpha">B</td>
<td onclick="check(7)" class="num">1</td>
<td onclick="check(8)" class="num">2</td>
<td class="space"></td>
<td onclick="check(9)" class="num">3</td>
<td onclick="check(10)" class="num">4</td>
<td class="space"></td>
<td onclick="check(11)" class="num">5</td>
<td onclick="check(12)" class="num">6</td>
</tr>
<tr>
<td class="alpha">C</td>
<td onclick="check(13)" class="num">1</td>
<td onclick="check(14)" class="num">2</td>
<td class="space"></td>
<td onclick="check(15)" class="num">3</td>
<td onclick="check(16)" class="num">4</td>
<td class="space"></td>
<td onclick="check(17)" class="num">5</td>
<td onclick="check(18)" class="num">6</td>
</tr>
<tr>
<td class="alpha">D</td>
<td onclick="check(19)" class="num">1</td>
<td onclick="check(20)" class="num">2</td>
<td class="space"></td>
<td onclick="check(21)" class="num">3</td>
<td onclick="check(22)" class="num">4</td>
<td class="space"></td>
<td onclick="check(23)" class="num">5</td>
<td onclick="check(24)" class="num">6</td>
</tr>
<tr>
<td class="alpha">E</td>
<td onclick="check(25)" class="num">1</td>
<td onclick="check(26)" class="num">2</td>
<td class="space"></td>
<td onclick="check(27)" class="num">3</td>
<td onclick="check(28)" class="num">4</td>
<td class="space"></td>
<td onclick="check(29)" class="num">5</td>
<td onclick="check(30)" class="num">6</td>
</tr>
</table>
<input id="sub" type="submit" value="save">
</div>
</form>
</div>
</body>
</html>