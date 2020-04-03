<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		ul li { display: inline; padding: 0 10px; }
	</style>
</head>
<body>
	<div align="center">
		<h1 style="color: burlywood; font-size: 60px; font-family: Gabriola;">
			CARE &nbsp; LAB</h1>
	</div>
	<div align="right">
		<hr> <ul>
			<li><a href="../member/index.jsp">HOME</a></li>
			<% if (session.getAttribute("userId") == null) { %>
				<li><a href="../member/login.jsp">회원정보</a></li>
			<% } else { %>
				<li><a href="../member/memberInfo.jsp">회원정보</a></li>
			<% } %>
			<% if (session.getAttribute("userId") == null) { %>
				<li><a href="../member/login.jsp">로그인</a></li>
			<% } else { %>
				<li><a href="../member/logout.jsp">로그아웃</a></li>
			<% } %>
		</ul> <hr>
	</div>
</body>
</html>
