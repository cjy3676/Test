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
	
	Date today = new Date();
	int yy = today.getYear()+1900;
	int mm = today.getMonth()+1;
	int dd = today.getDate();
	String reserve_day = yy+"-"+mm+"-"+dd;
	String sql = "select * from reserve_test where reserve_day='"+reserve_day+"'";
	ResultSet rs = stmt.executeQuery(sql);
	String seat = "";
	while(rs.next())
		seat = seat + rs.getString("seat")+",";
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
function check() {
	var seat = "<%=seat%>";
	var arr = seat.split(",");
	var s = document.getElementsByClassName("num");
	for(i=0; i<arr.length-1; i++) {
	   s[arr[i]-1].style.background = "#dddddd";
	   s[arr[i]-1].style.borderColor = "red";
	}
}
</script>
</head>
<body onload="check()">
<table width="300" border="1" cellspacing="30">
<caption><h3>예약 확인하기</h3></caption>
<caption><%=yy%>년 <%=mm%>월 <%=dd%>일</caption>
<tr>
<td class="num">1</td>
<td class="num">2</td>
<td class="num">3</td>
<td class="num">4</td>
</tr>
<tr>
<td class="num">5</td>
<td class="num">6</td>
<td class="num">7</td>
<td class="num">8</td>
</tr>
<tr>
<td class="num">9</td>
<td class="num">10</td>
<td class="num">11</td>
<td class="num">12</td>
</tr>
</table>
<input type="submit" value="save">
</body>
</html>