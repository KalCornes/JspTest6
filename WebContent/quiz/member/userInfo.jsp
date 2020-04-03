<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../default/header.jsp"/>
	<jsp:useBean id="mb" class="members.MemberDAO"/>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<div align="center" style="height: 300px;">
	<h1>개인 정보</h1>
	<%
	dto = mb.memberView(request.getParameter("id"));
	%>
		<table>
		<tr><th width="100">아 이 디</th><td><%=dto.getId()%></td></tr>
		<tr><th width="100">비밀번호</th><td><%=dto.getPwd()%></td></tr>
		<tr><th width="100">이 름</th><td><%=dto.getName()%></td></tr>
		<tr><th width="100">주 소</th><td><%=dto.getAddr()%></td></tr>
		<tr><th width="100">전화번호</th><td><%=dto.getTel()%></td></tr>
		<tr>
	<td align="center"><input type="button" value="수 정" 
	onclick='location.href="modifyInfo.jsp?id=<%=dto.getId()%>"'></td>
	<td><input type="button" value="삭 제" 
	onclick='location.href="delete.jsp?id=<%=dto.getId()%>"'></td>
</tr>
		
		</table>
	</div>
	<jsp:include page="/quiz/default/footer.jsp"/>
</body>

</html>