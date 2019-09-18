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
	
/*  request.setCharacterEncoding("UTF-8");
	String movie = request.getParameter("movie");
	String theater = request.getParameter("theater");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String seat = request.getParameter("seat");
	String number = request.getParameter("number");
	String n_tot = request.getParameter("n_tot"); 
*/
	String number = request.getParameter("number");
	String sql = "select * from reserve_test2 where number='"+number+"'";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
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
	cursor: pointer;
}

#n_tot {
	display: inline;
}

#minus {
	font-size: 20px;
	display: inline;
	cursor: pointer;
}

.num {
	width: 20px;
	height: 20px;
	border: 2px solid #380620;
	text-align: center;
	cursor: pointer;
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

button {
	margin-top: 25px;
	height: 25px;
}

a {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body> 
<div id="main" align="center">
<div id="inf">
<caption><h4>예매 확인</h4></caption>
<caption><%=rs.getString("id")%>님 예매내역</caption>
<p>
<caption>예매번호 : </caption>
<p>
<caption><%=rs.getString("movie")%></caption>
<p>
<caption>관람극장 : <%=rs.getString("theater")%></caption>
<p>
<caption>관람일시 : <%=rs.getString("date")%> <%=rs.getString("time")%>시</caption>
<p>
<caption>관람좌석 : <%=rs.getString("seat")%></caption>
<p>
<caption>관람인원 : <%=rs.getString("n_tot")%>명</caption>
<hr>
<button><a href="removie.jsp">확인</a></button>
</div>
</div>
</body>
</html>