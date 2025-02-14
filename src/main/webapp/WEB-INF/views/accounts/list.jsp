<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/accountsList.css">
</head>
<body>
    <c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
    <c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
    <section class="main">
    	<!-- 내용 넣는 부분 -->
        <section class="account_list">
            <table class="table_shadow">
                <thead>
                    <tr>
                        <th>계좌번호</th>
                        <th>상품명</th>
                        <th>잔액</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${accounts}" var="dto">
	                    <tr>
	                        <td>${dto.accountNum }</td>
	                        <td>${dto.productDTO.productName }</td>
	                        <td>${dto.accountBalance}</td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </section>
</body>
</html>