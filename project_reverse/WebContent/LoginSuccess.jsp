<%@page import="com.member.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	memberDTO dto = (memberDTO)session.getAttribute("dto"); %>
	<h1>로그인 성공 페이지</h1>
		<%if(dto == null) {%>
        <h1>로그인 한 세션아이디를 출력해주세요</h1>
        <%}else{ %>
        <h1><%=dto.getMemId() %>님 환영합니다.</h1>
        <%} %> 
</body>
</html>