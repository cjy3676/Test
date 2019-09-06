<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 메인페이지 윗부분 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리의 팬션</title>
<style>
html, body, h2 {
	margin: 0;
	padding: 0;
	border: 0;
}

#member, #header, #move_img, #insa, #link, #footer {
	margin: auto;
}

#member {
	width: 1200px;
	height: 50px;
	background: #f2f2f2;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

#member>a {
	color: black;
	text-decoration: none;
	margin-left: 20px;
	margin-right: 15px;
}

#header { /* 2층 */
	width: 1200px;
	height: 80px;
	background: #f2f2f2;
}

#header img {
	width: 300px;
	height: 80px;
	float: left;
	display: flex;
	align-items: center;
	float: left;
	margin-left: 50px;
}

#header #menu {		
	width: 850px;
	height: 60px;
	float: right;
	display: flex;
	align-items: center;
}

#header #menu ul {
    padding-left: 20px;
    letter-spacing: -1px;
}

#header #menu li {
	list-style-type: none;
	float: left;
	font-size: 19px;
	font-weight: 900;
	margin-left: 80px;
}

#header #menu a {
	color: #000000;
	text-decoration: none;
}

#adpop {
	position: absolute;
	left: 200px;
	top: 200px;
	width: 300px;
	height: 300px;
	border: 5px solid #009688;
	border-radius: 10px 10px 10px 10px; 
	background: #2ecc71;
	text-align: center;
}

#adpop #e1 {
	text-color: skyblue;
	border-bottom: 2px solid black;
	text-align: center;
}

#adpop #e2 {
	color: #fff ;
	word-spacing: -2px;
	margin-top: 30px;
}

#adpop #e3 {
	color: #fff;
	margin-top: 30px;
	margin-bottom: 60px;
}

button,button::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: #fff;
/*   display: flex; */
  font-size: 12px;
  font-weight: bold;
  margin: 5px auto;
  padding: 5px 10px;
  position: relative;
  text-transform: uppercase;
}

button::before, button::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

button:hover {
  color: #2ecc71;
}

#adpop #e5 {
/* float: left; */
margin-left: 10px;
}

#adpop #e5::after {
  height: 100%;
  left: 0;
  top: 0;
  width: 0;
}

#adpop #e5:hover:after {
  width: 100%;
}

#move_img {
	width: 1200px;
	height: 300px;
	background: #f2f2f2;
}

#insa {
	width: 1200px;
	height: 200px;
	background: #f2f2f2;;
}

#insa #left {
	width: 340px;
	height: 200px;
	color: gray;
	float: left;
	padding-left: 15px;
	font-weight: bold;
	font-size: 20px;
	line-height: 14px;
}

#insa #left p:last-child {
	color: #9f9da0;
}

#insa #right {
	width: 840px;
	height: 200px;
	float: right;
	line-height: 7px;
	font-size: 13px;
}

#insa #right span {
	display: inline-block;
	width: 80px;
	height: 35px;
	border: 1px solid #333;
	display: flex;
	justify-content: center;
	align-items: center;
}

#insa #right span:hover {
	border-color: white;
}

#insa #right p:first-child {
	height: 30px;
}

#insa #right p:last-child {
	display: flex;
	justify-content: flex-end;
	padding-right: 30px;
}

#link {
	width: 1200px;
	height: 450px;
	background: #f2f2f2;
}

#link td:first-child {
	padding-left: 0px;
}

#link td {
	padding: 12px;
}

#link img:hover {
	opacity: 0.6;
}

#footer {
	width: 1160px;
	height: 130px;
	background: #1f2330;
	color: #000000;
	line-height: 8px;
	padding-top: 20px;
	padding-left: 40px;
	font-size: 14px;
}

#footer p:last-child {
	margin-top: 30px;
}

a {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id=member><!-- 1층 -->
	회원가입
	로그인 
	로그아웃
	</div>
	<div id=header><!-- 2층 -->
	<div id=logo><img src=logo.png></div>
	<div id=menu>
	<ul>
	<li>예약</li>
	<li>펜션 소개</li>
	<li>고객 문의</li>
	</ul>
	</div>
	</div>
	<div id=move_img><!-- 3층 -->
	<img src=1.jpg width=1200px height=300px>
	</div>
	<div id=insa><!-- 4층 -->
	<div id=left>
	<p>안녕하셔유</p>
	<p>저희 충북 음성 조금한 펜션이여유</p>
	<p>편하게 쉬다가 가셨으면 좋겠슈</p>
	</div>
	<div id=right>
	<p>저희 펜션은유 호주 테마여행을 중심으로 하는디유 깔끔하고 자연적이여유</p>
	<p>언제나 저희 펜션을 이용해주셔서 감사해유 여러분들을 최선을 다해 모실께유</p>
	</div>
	</div>
	<div id=link><!-- 5층 -->
	<img src=2.jpg width=580px height=450px>
	<img src=3.jpg width=580px height=450px>
	</div>
	<div id=footer style="clear:both"></div>