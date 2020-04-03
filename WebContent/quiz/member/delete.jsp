<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="check" class="members.MemberDAO"/>
<h1>삭제되었습니다</h1>
<%
int result=check.delete(request.getParameter("id"));
System.out.print("\n삭제 아이디 : "+request.getParameter("id"));
if(result == 1){
	session.invalidate();
	out.print("<script>alert('삭제 되었습니다');"
			+ "location.href='login.jsp';</script>");
}else{
	out.print("<script>alert('문제가 발생 되었습니다');" 
			+ "history.back();</script>");
}
%>

</body>
</html>