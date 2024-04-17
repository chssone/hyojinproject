<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 정보 수정</title>
</head>
<body>
<h1> 쿠폰 정보 수정 </h1>
	
	<h5>쿠폰 수정</h5>

	<form action="./CouponUpdateView.jo" method="post" id="sign_coupon">
	
	<label for="coupon_code"> 쿠폰 코드 번호 </label>	
	<input type="text" name="coupon_code" id="coupon_code" value="${param.coupon_code}" readonly>
	
 	<label for="coupon_type"> 쿠폰 종류 </label>
        <select name="coupon_type" id="coupon_type">
            <option>----- 선택하세요 -----</option>
            <option value="2시간할인" ${couponDTO.coupon_type == '2시간할인' ? 'selected' : ''}> 2시간할인권 </option>
            <option value="종일" ${couponDTO.coupon_type == '종일' ? 'selected' : ''}> 종일권 </option>
        </select>

     <label for="coupon_name"> 쿠폰 이름 </label>
        <select name="coupon_name" id="coupon_name">
            <option>----- 선택하세요 -----</option>
            <option value="할인권" ${couponDTO.coupon_name == '할인권' ? 'selected' : ''}> 할인권 </option>
            <option value="종일권" ${couponDTO.coupon_name == '종일권' ? 'selected' : ''}> 종일권 </option>
        </select>
	
	<label for="coupon_price"> 쿠폰 금액 </label>
	<input type="text" name="coupon_price" id="coupon_price" value="${couponDTO.coupon_price}">
	
	<label for="coupon_price"> 사용 여부 </label>
	<input type="radio" name="coupon_use" id="coupon_use_available" value="사용가능" ${couponDTO.coupon_use == '사용가능' ? 'checked' : ''}> 사용가능
	<input type="radio" name="coupon_use" id="coupon_use_used" value="사용불가능" ${couponDTO.coupon_use == '사용불가능' ? 'checked' : ''}> 이미사용된쿠폰
	
	<button type="submit"> 등록 </button>
	<button type="reset"> 취소 </button>

	</form>
	
	<a href="./CouponSelect.jo"> 쿠폰 목록 </a>

	<a href="./CouponDeleteView.jo?coupon_code=${param.coupon_code}"> 쿠폰 목록 삭제
</a>
</body>
</html>