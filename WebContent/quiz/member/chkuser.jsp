<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="members.*" %>
	<jsp:useBean id="check" class="members.MemberDAO"/>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%
	int result = check.userCheck(dto.getId(),dto.getPwd());
	if(result == 0 ){
		session.setAttribute("userId", dto.getId());
		response.sendRedirect("successLogin.jsp");
	}else if(result == 1){
		out.print("<script>alert('비밀번호가 일치하지 않습니다..'); history.back();</script>");
	}else{
		out.print("<script>alert('등록되지 않은 아이디 입니다.'); history.back();</script>");
	}
	%>
</body>
</html>
