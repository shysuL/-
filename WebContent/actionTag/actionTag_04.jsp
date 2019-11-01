<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- request 컨텍스트 정보 저장 --%>
<% request.setAttribute("data", "contextData"); %>

<h1>액션태그 테스트 04</h1>
<h3>include</h3>

<% request.setCharacterEncoding("utf-8"); %>
<%-- <jsp:include page="/views/includePage.jsp"> --%>
<%-- 	<jsp:param value="안녕! Hello" name="includeData"/> --%>
<%-- </jsp:include> --%>

<%@ include file="/views/includePage.jsp"%>


</body>
</html>