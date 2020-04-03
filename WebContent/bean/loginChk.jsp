
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="members.MemberDTO"%>
	<%
		MemberDTO member = new MemberDTO();
		member.setId("111");  member.setPwd("111");
		String uid = request.getParameter("id");
		String upwd = request.getParameter("pwd");
		if(member.getId().equals(uid) && 
						member.getPwd().equals(upwd)){
			out.print("로그인 성공!!!");
		}else{	out.print("로그인 실패!!!");	}
	%>
	<a href="javascript:history.back()">이전</a>
</body>
</html>















