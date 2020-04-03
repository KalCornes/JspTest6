<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mb" class="members.MemberDTO"/>
	<jsp:setProperty property="*" name="mb"/>
	id : { mb.id } <br>
	pwd : <%=mb.getPwd() %><br>
	name : <%=mb.getName() %><br>
	addr : <jsp:getProperty property="addr" name="mb"/><br>
	tel : <jsp:getProperty property="tel" name="mb"/><br>
</body>
</html>














