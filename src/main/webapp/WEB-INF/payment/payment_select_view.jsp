<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>결제 정보 관리</title>

</head>
<body>

	<h1>결제 정보 관리</h1>
	<h5>결제 정보 목록</h5>
	<table>
		<thead>
			<tr>
				<th>결제 코드 번호</th>
				<th>카드번호</th>
				<th>카드사</th>
				<th>결제금액</th>
				<th>결제일</th>
				<th></th>
			</tr>
		</thead>
		<c:forEach var="arrayList" items="${arrayList}">
			<tr class="text-center">
				<td>${arrayList.payment_code}</td>
				<td>${arrayList.payment_card_num}</td>
				<td>${arrayList.payment_card_company}</td>
				<td>${arrayList.payment_total}</td>
				<td>${arrayList.payment_date}</td>
				<td><a
					href="./PaymentSelectDetail.jn?payment_code=${arrayList.payment_code}">
						결제 상세 보기 </a></td>
			</tr>
		</c:forEach>
		<c:if test="${empty arrayList}">
			<tr>
				<td>등록된 결제가 없습니다.</td>
			</tr>
		</c:if>
	</table>
	<a href="./PaymentInsertView.jn"> 결제 정보 입력 </a>

</body>
</html>