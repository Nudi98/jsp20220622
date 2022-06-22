<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h2>로그아웃 확인</h2>
	<hr>
	<%
		session.invalidate();	
	%>
	<%
		if(request.isRequestedSessionIdValid()==false){
			out.println("<a href='login.jsp'>");
			out.println("로그인<br>");
			out.println("</a>");
		}
		else{
	%>
			<a href="logout.jsp">로그아웃 완료</a>
	<%
		}
	%>
</body>
</html>