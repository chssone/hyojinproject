<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인권 정보 관리</title>
</head>
<body>

	<h1>할인권 정보 관리</h1>
	<h5>할인권 정보 목록</h5>
	<table>
		<thead>
			<tr>
				<th>쿠폰 코드 번호</th>
				<th>쿠폰 종류</th>
				<th>쿠폰 이름</th>
				<th>유효 기간 (시작일)</th>
				<th>유효 기간 (종료일)</th>
				<th>가격</th>
				<th>사용여부</th>				
				<th></th>
			</tr>
		</thead>
		<c:forEach var="arrayList" items="${arrayList}">
			<tr class="text-center">
				<td>${arrayList.coupon_code}</td>
				<td>${arrayList.coupon_type}</td>
				<td>${arrayList.coupon_name}</td>
				<td>${arrayList.coupon_start}</td>
				<td>${arrayList.coupon_end}</td>
				<td>${arrayList.coupon_price}</td>
				<td>${arrayList.coupon_use}</td>
				<td><a
					href="./CouponSelectDetail.jo?coupon_code=${arrayList.coupon_code}">
						쿠폰 상세 보기 </a></td>
			</tr>
		</c:forEach>
		<c:if test="${empty arrayList}">
			<tr>
				<td>등록된 쿠폰이 없습니다.</td>
			</tr>
		</c:if>
	</table>
	<a href="./CouponInsertView.jo"> 쿠폰 정보 입력 </a>
</body>
</html>