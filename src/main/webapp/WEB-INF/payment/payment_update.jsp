<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 수정</title>
</head>
<body>
	<h1> 결제 정보 수정 </h1>
	
	<h5> 카드번호 수정</h5>
	<form action="./PaymentUpdateView.jn" method="post" id="sign_payment">
	
	<label for="payment_code"> 결제 코드 번호 </label>
	<input type="text" name="payment_code" id="payment_code" value="${param.payment_code}" readonly>
	
	<label for="payment_card_num"> 카드 번호</label>
	<input type="text" name="payment_card_num" id="payment_card_num" value="${paymentDTO.payment_card_num}">
		
	<label for="payment_card_company"> 카드사 </label>
	<input type="text" name="payment_card_company" id="payment_card_company" value="${paymentDTO.payment_card_company}">
	
		<label for="payment_card_company"> 결제금액  </label>
	<input type="text" name="payment_total" id="payment_total" value="${paymentDTO.payment_total}">
	
	<button type="submit"> 등록 </button>
	<button type="reset"> 취소 </button>
	</form>

	<a href="./PaymentSelect.jn"> 결제 목록 </a>
	
	<a href="./PaymentDeleteView.jn?payment_code=${param.payment_code}"> 결제 목록 삭제
	</a>
</body>
</html>