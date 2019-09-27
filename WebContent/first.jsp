<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 이메일과 핸드폰 글자는 innerText 변경 -->
<!-- email, hphone은 자바스크립트에서 display를 사용 -->
<script type="text/javascript">
	function imsi(n) { // 글자바꾸기, 해당 input태그 보이기()
		if (n == 0) {
			document.getElementById("aa").innerText = "이메일";
			document.getElementById("email").style.display = "inline-block";
			document.getElementById("hphone").style.display = "none";
			document.getElementById("hphone").value = "";
		} else {
			document.getElementById("aa").innerText = "핸드폰";
			document.getElementById("email").style.display = "none";
			document.getElementById("hphone").style.display = "inline-block";
			document.getElementById("hphone").value = "";
		}
	}
</script>

<form method="post" action="search.jsp">
<input type="radio" name="sel" value="0" checked onclick="imsi(0)">이메일
<input type="radio" name="sel" value="1" onclick="imsi(1)">핸드폰<p>
이름 <input type="text" name="name"><p>
<span id="aa">이메일</span><input type="text" name="email" id="email">
<input type="text" name="hphone" style="display:none;" id="hphone">
<input type="submit" value="전송">
</form>