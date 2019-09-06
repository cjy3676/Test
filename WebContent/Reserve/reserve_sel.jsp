<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%
	String aa = "jdbc:mysql://localhost:3307/reserve?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	// 이름, 전화번호, 예약날짜, 시간, 인원
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String reserve_day = request.getParameter("year") + "-" + request.getParameter("month") + "-"
			+ request.getParameter("day"); // 미완료
	String time = request.getParameter("time"); // sigan
	String n_tot = request.getParameter("n_tot"); // inwon
	
	String sql = "select * from reserve_test where reserve_day='" + reserve_day + "'";
	ResultSet rs = stmt.executeQuery(sql);
	String seat = "";
	while (rs.next())
		seat = seat + rs.getString("seat") + ",";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td {
width: 40px;
height: 40px;
border: 1px solid black;
text-align: center;
}
</style>
<script>
function imsi(n) {
	var s = document.getElementsByClassName("num");
	var chk = document.cjy.seat.value;
	if(chk != "") {		
		s[chk-1].style.borderColor="black";
	}
	document.cjy.seat.value = n;
	s[n-1].style.borderColor = "red";
}

function check() {
	var seat = "<%=seat%>";
	var arr = seat.split(",");
	var s = document.getElementsByClassName("num");
	for(i=0; i<arr.length-1; i++) {
	   s[arr[i]-1].style.background = "#dddddd";
	   s[arr[i]-1].style.borderColor = "red";
	   s[arr[i]-1].onclick = "";
	}
}
</script>
</head>
<body onload="check()">
<form method="post" name="cjy" action="reserve_ok.jsp">
<input type="hidden" name="seat">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="phone" value="<%=phone%>">
<input type="hidden" name="reserve_day" value="<%=reserve_day%>">
<input type="hidden" name="time" value="<%=time%>">
<input type="hidden" name="n_tot" value="<%=n_tot%>">
<table width="300" border="1" cellspacing="30">
<caption><h3>자리 선택하기</h3></caption>
<caption> 예약날짜 : <%=reserve_day%> 예약시간 : <%=time%>시</caption>
<tr>
<td onclick="imsi(1)" class="num">1</td>
<td onclick="imsi(2)" class="num">2</td>
<td onclick="imsi(3)" class="num">3</td>
<td onclick="imsi(4)" class="num">4</td>
</tr>
<tr>
<td onclick="imsi(5)" class="num">5</td>
<td onclick="imsi(6)" class="num">6</td>
<td onclick="imsi(7)" class="num">7</td>
<td onclick="imsi(8)" class="num">8</td>
</tr>
<tr>
<td onclick="imsi(9)" class="num">9</td>
<td onclick="imsi(10)" class="num">10</td>
<td onclick="imsi(11)" class="num">11</td>
<td onclick="imsi(12)" class="num">12</td>
</tr>
</table>
<input type="submit" value="save">
</form>
</body>
</html>