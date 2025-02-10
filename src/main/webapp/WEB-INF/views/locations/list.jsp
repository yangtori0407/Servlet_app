<%@page import="com.yang.app.locations.LocationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<LocationDTO> ar = (List<LocationDTO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/template/common.jsp"%>
<link rel="stylesheet" href="/resources/css/list.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<section class="wrap_left contents">
		<%@ include file="/WEB-INF/views/template/nav.jsp"%>
		<div class="right contents_right">
			<div class="contents_right_list">
				<table class="table_shadow">
					<thead>
						<th>Location Id</th>
						<th>City</th>
					</thead>
					<tbody>
						<%
						for (LocationDTO dto : ar) {
						%>
						<tr>
							<td><%=dto.getLocation_id()%></td>
							<td><a
								href="./detail.do?location_id=<%=dto.getLocation_id()%>"><%=dto.getCity()%></a></td>
						</tr>
						<%}%>
					</tbody>
				</table>
			</div>
			<div>
				<a href="./add.do">로케이션 등록</a>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>