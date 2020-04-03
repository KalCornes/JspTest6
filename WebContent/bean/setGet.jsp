<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setGet.jsp<br>
<jsp:useBean id="mb" class="members.MemberDTO"/>
id : <jsp:getProperty property="id" name="mb"/><br>
pwd : <jsp:getProperty property="pwd" name="mb"/><br>
<hr>
<% MemberDTO dd = new MemberDTO(); %>
<jsp:setProperty property="id" name="mb"/>
<jsp:setProperty property="pwd" name="mb"/>
id : <%=mb.getId() %><br>
pwd : <jsp:getProperty property="pwd" name="mb"/><br>
</body>
</html>

























