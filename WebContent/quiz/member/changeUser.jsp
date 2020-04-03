<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	//response.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="check" class="members.MemberDAO"/>
<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
String id = request.getParameter("id");
int result = check.changeUser(dto);
if(result == 1){
	out.print("<script>alert('변경 되었습니다.');"
				+"location.href='userInfo.jsp?id="+id+"';</script>");
}else{
	out.print("<script>alert('문제가 발생하였습니다. 관리자에게 문의하세요.');"
			+"location.href='userInfo.jsp?id="+id+"';</script>");
}
%>
</body>

</html>