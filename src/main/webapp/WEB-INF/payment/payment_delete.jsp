<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 삭제</title>

</head>
<body>

	<h1>결제 정보 삭제</h1>

	<h5>결제 정보 삭제</h5>

	<form action="./PaymentDelete.jn" method="post" id="delete_payment">

		<label for="payment_code"> 결제 코드 번호 </label>
		<input type="text" name="payment_code" id="payment_code" value="${param.payment_code}" readonly>


		<button type="submit">삭제</button>
		<button type="reset">취소</button>

	</form>

	<a href="./PaymentSelect.jn"> 결제 정보 목록 </a>

</body>
</html>