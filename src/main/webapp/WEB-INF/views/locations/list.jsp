<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<%
List<LocationDTO> ar = (List<LocationDTO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/template/common.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/list.css">
</head>
<body>
	<c:import url="/WEB-INF/views/template/header.jsp"></c:import>
	<section class="wrap_left contents">
	<c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
		<div class="right contents_right">
			<div class="contents_right_list">
				<table class="table_shadow">
					<thead>
						<th>Location Id</th>
						<th>City</th>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="d">
						<tr>
							<td>${d.location_id}</td>
							<td><a href="./detail.do?location_id=${d.location_id}">${d.city}</a></td>
						</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
			<div>
				<a href="./add.do">로케이션 등록</a>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>