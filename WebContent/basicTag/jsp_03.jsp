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
<h1>하하하!</h1>
<hr>
<% int num = 123; // _javaService() 메소드의 직역 변수
	// out.response.getWriter()
	out.print(num); // 브라우저 화면에 출력함
	out.print("<h3>" + num + "</h3>");
	
	System.out.println(num);; //  콘솔에 출력함
%>
<hr>

<%= num %>

<h3><%=num %></h3>




</body>
</html>