<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 회원가입 부분 -->	
<style>
#image {
	width: 1200px;
	height: 305px;
	margin: auto;
}

#section {
	width: 1200px;
	height: 400px;
	margin: auto;
	background: #f2f2f2;
}

#section input[type=text] { /* input의 type=text인것 */
	width: 200px;
	height: 30px;
	border: 1px solid #F5F8F9;
}

#section input[type=password] { /* input의 type=password인것 */
	width: 200px;
	height: 30px;
	border: 1px solid #F5F8F9;
}

#section input[type=submit] { /* input의 type=submit인것 */
	width: 200px;
	height: 40px;
	border: 1px solid #FF3061;
	background: #FF3061;
	color: #FFF
}

#section td {
	width: 170px;
	height: 40px;
	font-size: 16px;
	font-weight: 900;
}

#section tr:last-child { /* tr태그중에 마지막 tr태그 */
	height: 60px;
}
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
<script>
	function check(form) {
		if (form.userid.value == "") {
			alert("아이디를 입력하세요");
			form.userid.focus();
			return false;
		} 
		else if (form.name.valuse == "") {
			alert("이름을 입력하세요");
			form.name.focus();
			return false;
		} 
		else if (form.pwd1.value == "") {
			alert("비밀번호를 입력하세요");
			form.pwd1.focus();
			return false;
		} 
		else if (form.pwd1.value != form.pwd2.value) {
			alert("비밀번호가 틀립니다");
			form.pwd1.value = "";
			form.pwd1.value = "";
			form.pwd1.focus();
			return false;
		} 
		else if (form.email.value == "") {
			alert("이메일을 입력하세요");
			form.email.focus();
			return false;
		} 
		else
			return true;
	}
</script>
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
<div id=section>
	<form method=post action=member_ok.jsp>
		<table align=center>
			<caption><h1>회원가입</h1></caption>
			<tr>
				<td>아이디</td>
				<td><input type=text name=userid></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type=text name=name></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type=text name=pwd1></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type=text name=pwd1></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type=text name=email></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit value=회원가입>
				</td>
			</tr>
		</table>
	</form>
</div>
<div id=footer style="clear:both"></div>

