<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>    
<% 
  String aa="jdbc:mysql://localhost:3307/reserve?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
   
 
   // 이름,전화번호,예약날짜, 시간, 인원
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
   String phone=request.getParameter("phone");
   String reserday=request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
   String sigan=request.getParameter("sigan");
   String inwon=request.getParameter("inwon");
 
   // 예약하는 부분 => 사용자가 선택한 년,월,일로 검색
   String sql="select * from reser_table where reserday='"+reserday+"'";
   ResultSet rs=stmt.executeQuery(sql);
   String seat="";
   while(rs.next())
 	  seat=seat+rs.getString("seat")+",";
%>    
<!DOCTYPE html> <!-- reser_sel.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   td {
    width:40px;
    height:40px;
    border:1px solid black;
    text-align:center;
   }
 </style>
 <script>
 var inwon=<%=inwon%>;
 var s_inwon=0;
 function check()
 {
	   var seat="<%=seat%>"; 
	   var arr=seat.split(","); 
	   var s=document.getElementsByClassName("ss");
	   for(i=0;i<arr.length-1;i++)
	   {
	     s[arr[i]-1].style.background="#dddddd";
	     s[arr[i]-1].style.borderColor="red";
	     s[arr[i]-1].onclick=""; // onclick의 값 바꾸기
	   }

 }
 function imsi(n)
 {
 
	var seat=document.pkc.seat.value;
	var s=document.getElementsByClassName("ss");
    if(s_inwon < inwon && seat.indexOf(n)==-1) 
    {
    	seat=seat+","+n;
    	document.pkc.seat.value=seat;
    	s[n-1].style.background="#dddddd";
	    s[n-1].style.borderColor="red";
	    s_inwon++;
	    si.innerText=s_inwon;
    }
    else 
    {  
      	if(seat.indexOf(n)!=-1)
      	{
      	    seat=seat.replace(","+n,"");
      		s[n-1].style.background="white";
    	    s[n-1].style.borderColor="black";
    	    s_inwon--;
    	    si.innerText=s_inwon;
    	    document.pkc.seat.value=seat;
      	}
    	
    }
 
	 aaa.innerHTML=seat;
 }
 </script>
</head>
<body onload=check()>
 신청인원:<%=inwon%> , 선택인원:<span id=si></span> <p>
 좌석 : <span id=aaa></span> <p>
 <form name=pkc method=post action=reser_ok.jsp>
  <input type=hidden name=seat> <!-- 스크립트에서 전달 -->
  <input type=hidden name=name value="<%=name%>">
  <input type=hidden name=phone value="<%=phone%>">
  <input type=hidden name=reserday value="<%=reserday%>">
  <input type=hidden name=sigan value="<%=sigan%>">
  <input type=hidden name=inwon value="<%=inwon%>">
  <table width=300 border=1 cellspacing=30>
   <caption> 예약날짜 : <%=reserday%> 예약시간 : <%=sigan%>시</caption>
   <tr>
     <td onclick=imsi(1) class=ss>1</td>
     <td onclick=imsi(2) class=ss>2</td>
     <td onclick=imsi(3) class=ss>3</td>
     <td onclick=imsi(4) class=ss>4</td>
   </tr>
   <tr>
     <td onclick=imsi(5) class=ss>5</td>
     <td onclick=imsi(6) class=ss>6</td>
     <td onclick=imsi(7) class=ss>7</td>
     <td onclick=imsi(8) class=ss>8</td>
   </tr>
   <tr>
     <td onclick=imsi(9) class=ss>9</td>
     <td onclick=imsi(10) class=ss>10</td>
     <td onclick=imsi(11) class=ss>11</td>
     <td onclick=imsi(12) class=ss>12</td>
   </tr>
  </table>
  <input type=submit value=예약완료>
 </form>  
</body>
</html>