<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
</head>
<body>
    <c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
    <c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
    <section class="main">
    	<!-- 내용 넣는 부분 -->
    	<h1>해당 페이지를 찾을 수 없습니다.</h1>
    	<a href="/index.do">HOME</a>
        <img src="/resources/images/shinhan.jpg">
    </section>
</body>
</html>