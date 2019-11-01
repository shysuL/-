<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid = request.getParameter("userid");

	PrintWriter o = response.getWriter();
	
	// VIEW로 모델값 전달하기
	request.setAttribute("data", "model data");
	
	// VIEW 지정
// 	request.getRequestDispatcher("/WEB-INF/views/member/lsit.jsp")
// 	.forward(request, response);
	
// 	private MemberDao memberDao = new MemberDaoImpl();
	
// 	List list = memeberDao.list();
	
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<footer>
	<h1>여기는 FOOTER입니다!</h1>
</footer>

</body>
</html>