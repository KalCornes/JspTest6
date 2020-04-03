<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/quiz/default/header.jsp"/>
<jsp:useBean id="mb" class="members.MemberDAO"/>
<%
MemberDTO dto =  mb.memberView(request.getParameter("id"));
%>
<div align="center">
<form action="changeUser.jsp" method='post'>
<input type="hidden" name="id" value="<%=dto.getId()%>"><br>
<input type="hidden" name="pwd" value="<%=dto.getPwd()%>"><br>
이 름 <input type="text" name="name" value="<%=dto.getName()%>"><br>
주 소 <input type="text" name="addr" value="<%=dto.getAddr()%>"><br>
전화번호 <input type="text" name="tel" value="<%=dto.getTel()%>"><br>
<input type="submit" value="완료">
<input type="reset" value="취소" onclick="javascript:history.back();">
</form>
</div>
<jsp:include page="/quiz/default/footer.jsp"/>
</body>

</html>