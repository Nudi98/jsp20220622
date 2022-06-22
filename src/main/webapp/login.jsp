<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		String memberID = (String)session.getAttribute("memberID");
		if(memberID == null){
	%>
	<form action="LoginOk.jsp" method="post">
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		<input type="submit" value="로그인">
	</form>
	<%
		}
		else{
	%>
	현재 <%= memberID %>님은 로그인 중입니다.<br>
	<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<%
		}
	%>
</body>
</html>