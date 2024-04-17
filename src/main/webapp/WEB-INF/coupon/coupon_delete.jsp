<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 정보 삭제</title>
</head>
<body>

	<h1>쿠폰 정보 삭제</h1>

	<h5>쿠폰 정보 삭제</h5>
	
	<form action="./CouponDelete.jo" method="post" id="sign_payment">

		<label for="coupon_code"> 쿠폰 코드 번호 </label>
		<input type="text" name="coupon_code" id="coupon_code" value="${param.coupon_code}">


		<button type="submit">삭제</button>
		<button type="reset">취소</button>

	</form>

	<a href="./CouponSelect.jo"> 쿠폰 정보 목록 </a>

	<a href="./CouponInsertView.jo"> 쿠폰 정보 입력 </a>

	<a href="./CouponUpdateView.jn?coupon_code=${param.coupon_code}"> 	쿠폰 정보 수정 </a>

</body>
</html>