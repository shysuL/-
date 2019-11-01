<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/basicTag/jsp_header.jsp" %>


<div>
<h3>서브페이지</h3>
<p>여긴 include된 페이지 영역 </p>
<P>전달 데이터: <%= request.getParameter("includeData") %></P>

<P> request 컨텍스트: <%= request.getAttribute("data") %></P>
</div>

<%@ include file="/basicTag/jsp_footer.jsp" %>