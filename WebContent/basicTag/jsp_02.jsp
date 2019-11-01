<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 선언, Declaration 태그 --%>
<%! String name = "Alice"; // 멤버필드 %>

<%! private int age  = 11;%>

<%! private void method(){
		System.out.println("Hello"  + name);
}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% method();  // 매출드호츨 %>


</body>
</html>