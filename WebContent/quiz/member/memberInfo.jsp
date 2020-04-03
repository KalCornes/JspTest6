<%@page import="java.util.ArrayList"%>
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
<jsp:include page="/quiz/default/header.jsp"/>
<div align="center" >
<h1>회원 목록</h1>
<jsp:useBean id="mb" class="members.MemberDAO"/>
<%
ArrayList<MemberDTO> memberList = mb.memberView();
if(memberList == null || memberList.size() == 0 ){
	out.print("<h1>등록된 값이 없습니다.</h1>");
}else{%>
	<table border='1'>
	<tr>
	<th width="100">이름</th><th width="100">주소</th><th width="100">전화번호</th>
	</tr>
	<%	for(MemberDTO dto:memberList){	%>
	<tr>
	<td style="cursor:pointer"
	onclick="location.href='userInfo.jsp?id=<%=dto.getId()%>'">
	<%=dto.getName()%>
	</td>
	
	
	<td><%=dto.getName()%></td><td><%=dto.getAddr()%></td><td><%=dto.getTel()%></td>
	</tr>
	<%	}out.print("</table>"); } %>
</div>
<jsp:include page="/quiz/default/footer.jsp"/>

</body>
</html>