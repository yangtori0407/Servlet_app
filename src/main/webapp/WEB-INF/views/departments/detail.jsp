<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/template/common.jsp"></c:import>
</head>
<body>
	<c:import url="/WEB-INF/views/template/header.jsp"></c:import>
	<section class="wrap_left contents">
		<c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
		<div class="right contents_right">
			<h1>Department Detail Page</h1>

			<c:choose>
				<c:when test="${not empty dto}">
					<h3>${requestScope.dto.department_id}</h3>
					<h3>${requestScope.dto.department_name}</h3>
					<h3>${requestScope.dto.manager_id}</h3>

					<a
						href="./update.do?department_id=${requestScope.dto.department_id }">부서
						수정</a>
					<a href="./delete.do?department_id=${dto.department_id }">부서 삭제</a>
				</c:when>
				<c:otherwise>
					<h3>부서 정보가 없습니다.</h3>
				</c:otherwise>
			</c:choose>


			<%-- <c:if test="${not empty dto}">
				<h3>${requestScope.dto.department_id}</h3>
				<h3>${requestScope.dto.department_name}</h3>
				<h3>${requestScope.dto.manager_id}</h3>

				<a
					href="./update.do?department_id=${requestScope.dto.department_id }">부서
					수정</a>
				<a href="./delete.do?department_id=${dto.department_id }">부서 삭제</a>
			</c:if>
			<c:if test="${empty dto }">
				<h3>부서 정보가 없습니다.</h3>
			</c:if> --%>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>



