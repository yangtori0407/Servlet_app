<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="com.yang.app.locations.LocationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Location Detail Page</h3>
	<h3>${dto.location_id }</h3>
	<h3>${dto.country_id }</h3>
	<h3>${dto.postal_code }</h3>
	<h3>${dto.state_province }</h3>
	<h3>${dto.street_address }</h3>
	
	<a href="./update.do?location_id=${dto.location_id}">location 수정</a>
	<a href="./delete.do?location_id=${dto.location_id}">location 삭제</a>
</body>
</html>