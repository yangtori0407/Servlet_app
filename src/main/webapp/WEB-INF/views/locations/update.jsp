<%@page import="com.yang.app.locations.LocationDAO"%>
<%@page import="com.yang.app.locations.LocationDTO"%>
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
	<h1>location update 페이지</h1>
	<form action="./update.do" method="post">
		<input type="hidden" name="location_id" value=${dto.location_id }>
		<input type="text" name="street_address" value=${dto.street_address }>
		<input type="text" name="postal_code" value=${dto.postal_code }>
		<input type="text" name="city" value=${dto.city }>
		<input type="text" name="state_province" value=${dto.state_province }>
		<input type="text" name="country_id" value=${dto.country_id }>
		<button type="submit">수정</button>
	</form>
</body>
</html>