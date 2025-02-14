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
                    <tr>
                        <td>123-456-7890</td>
                        <td>예금 상품 A</td>
                        <td>1,000,000원</td>
                    </tr>
                    <tr>
                        <td>234-567-8901</td>
                        <td>적금 상품 B</td>
                        <td>2,500,000원</td>
                    </tr>
                    <tr>
                        <td>345-678-9012</td>
                        <td>펀드 상품 C</td>
                        <td>3,200,000원</td>
                    </tr>
                </tbody>
            </table>
        </section>
    </section>
</body>
</html>