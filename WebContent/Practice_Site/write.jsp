<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body> <!-- 이름, 제목, 내용, 이메일, 성별, 마블 히어로, 주소 --> 
<div id=information>
<form method=post action=write_ok.jsp>
<table>
<!-- 머릿말 -->
<caption><h3>내용</h3></caption>
<!-- 이름 입력 부분 -->
<tr>
<td>이름</td>
<td><input type=text name=name></td>
</tr>
<!-- 제목 입력 부분 -->
<tr>
<td>제목</td>
<td><input type=text name=title></td>
</tr>
<!-- 내용 입력 부분 -->
<tr>
<td>내용</td>
<td><textarea cols=40 rows=6 name=content></textarea></td>
</tr>
<!-- 이메일 입력 부분 -->
<tr>
<td>이메일</td>
<td><input type=text name=email></td>
</tr>
<!-- 성별 입력 부분 -->
<tr>
<td>성별</td>
<td>
<input type=radio name=gender value=0> 남자
<input type=radio name=gender value=1> 여자
</td>
</tr>
<!-- 마블 히어로 입력 부분 -->
<tr>
<td>마블 히어로</td>
<td>
<input type=checkbox name=hero value=0> 아이언맨
<input type=checkbox name=hero value=1> 스파이더맨
<input type=checkbox name=hero value=2> 토르
<input type=checkbox name=hero value=3> 헐크
<input type=checkbox name=hero value=4> 캡틴 아메리카
<input type=checkbox name=hero value=5> 닥터 스트레인지
<input type=checkbox name=hero value=6> 블랙팬서
<input type=checkbox name=hero value=7> 앤트맨
</td>
</tr>
<!-- 주소 입력 부분 -->
<tr>
<td>주소</td>
<td>
<select name=address>
<option>선택</option>
<option>강원도</option>
<option>경기도</option>
<option>경상도</option>
<option>전라도</option>
<option>충청도</option>
<option>황해도</option>
<option>함경도</option>
<option>평안도</option>
</select>
</td>
</tr>
<tr>
<td colspan=2 align=center><input type=submit value=저장하기></td>
</tr>
</table>
</form>
</div>
</body>
</html>