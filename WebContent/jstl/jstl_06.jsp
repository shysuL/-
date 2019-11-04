<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

div{
	text-align:center; /* 가운데 정렬 */
}
div[id^=result]{
	border:1px solid #ccc;	
	width : 100px;
	height:50px;
	
	padding: 5px 0;
}
#gg{

	display: inline-block;
	margin: 0 10px;
	padding: 5px 0;
	float:left;
}
div[id^=result]:hover{
	background: #CCF;
}



.clearbox{
	clear:both;
}


</style>

</head>
<body>

<h1>c:forEach</h1>
<hr>

<%-- step 속성을 적지 않으면 기본값 1 --%>
<c:forEach var="i" begin="1" end="10">
	<h3>${i }</h3>
</c:forEach>
<hr>



<c:set var="sum" value="0"/>
<c:forEach var = "i" begin="1" end="100">
	<c:set var="sum" value="${sum+i}"/>
</c:forEach>
<h3>1~100의 합 : ${sum }</h3>

<hr>
<h3>구구단</h3>
<%-- 2~9단 --%>


<div id= "gugudan">
<c:forEach var = "j" begin="2" end ="9">
	<div id = "gg">
	<h3> ${j} 단</h3>
<c:forEach var = "i" begin="1" end="9">
		<div id = "result">
		<c:set var="ans" value="${j * i }"/> <h3> ${j} * ${i} = ${ans }</h3>
		</div>

</c:forEach>
	</div>
</c:forEach>
</div>


<div class ="clearbox"></div>
<hr>

<h3>Iterator로 활용하기</h3>

<% Map<Integer, String> map = new HashMap<>(); %>
<% map.put(1,"Apple"); %>
<% map.put(2,"Banana"); %>
<% map.put(3,"Cherry"); %>

<c:forEach var="iter" items="<%=map %>">
	${iter.key } : ${iter.value }<br>
</c:forEach>

<table border="1">
<tr>
	<th>키</th>
	<th>값</th>
</tr>
<c:forEach var="iter" items="<%=map %>">
<tr>
	<td>${iter.key }</td>
	<td>${iter.value }</td>
</tr>
</c:forEach>
</table>

<hr>

<% List<String> list = new ArrayList<>();
	list.add("Alice");
	list.add("Bob");
	list.add("C;are");
	list.add("Dave");
	list.add("Edward");
%>

<c:forEach var="i" items="<%=list %>"
	begin="0" end="4" step="1"
	varStatus="stat">
	
	<c:if test="${stat.first }">
	<span style="color:red; font-size:15px;">첫번째 줄입니다</span><br>
	</c:if>
	
	i: ${i }<br>
	루프 중 현재 인덱스 : ${stat.index }<br>
	루프 중 실행 횟수 : ${stat.count}<br>
	
	first: ${stat.first }<br>
	last: ${stat.last}<br>
	step: ${stat.step }<br>

	<c:if test="${stat.last}">
	<span style="color:red; font-size:15px;">마지막 줄입니다</span><br>
	</c:if>
	-----------<br>
	
</c:forEach>


</body>
</html>