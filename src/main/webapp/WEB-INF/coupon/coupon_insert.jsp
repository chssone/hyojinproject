<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>쿠폰 정보 입력</title>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
    $("#sign_coupon").submit(function() {
        // coupon_code 유효성 검사
        var couponCode = $("#coupon_code").val();
        if (!couponCode || isNaN(couponCode) || couponCode < 1 || couponCode > 1000) {
            alert("쿠폰 코드 번호를 1에서 1000 사이의 숫자로 입력하세요.");
            $("#coupon_code").focus();
            return false;
        }

        // coupon_type 유효성 검사
        var couponType = $("#coupon_type").val();
        if (couponType === "----- 선택하세요 -----") {
            alert("쿠폰 종류를 선택하세요.");
            $("#coupon_type").focus();
            return false;
        }

        // coupon_name 유효성 검사
        var couponName = $("#coupon_name").val();
        if (couponName === "----- 선택하세요 -----") {
            alert("쿠폰 이름을 선택하세요.");
            $("#coupon_name").focus();
            return false;
        }

        // coupon_price 유효성 검사
        var couponPrice = $("#coupon_price").val();
        if (!couponPrice || isNaN(couponPrice)) {
            alert("쿠폰 금액을 숫자로 입력하세요.");
            $("#coupon_price").focus();
            return false;
        }

        // coupon_use 유효성 검사
        var couponUse = $("input[name='coupon_use']:checked").val();
        if (!couponUse) {
            alert("쿠폰 사용 여부를 선택하세요.");
            return false;
        }

        return true; // 모든 유효성 검사를 통과하면 제출을 허용합니다.
    });
});
</script>
</head>
<body>
	<h1>쿠폰 정보 입력</h1>

	<h5>쿠폰 입력</h5>
	<form action="./CouponInsert.jo" method="post" id="sign_coupon">

		<label for="coupon_code"> 쿠폰 코드 번호 </label> <input type="text"
			name="coupon_code" id="coupon_code" placeholder="1~1000까지 숫자 중 입력">

		<label for="coupon_type"> 쿠폰 종류 </label> 
		<select name="coupon_type" id="coupon_type">
			<option>----- 선택하세요 -----</option>
			<option value="2시간할인"> 2시간할인권 </option>
			<option value="종일">종일권 </option>
		</select>
		<label for="coupon_name"> 쿠폰 이름 </label> 
		<select name="coupon_name" id="coupon_name">
			<option>----- 선택하세요 -----</option>
			<option value="할인권"> 할인권 </option>
			<option value="종일권">종일권 </option>
		</select>
			<label for="coupon_price"> 쿠폰 금액 </label>
			<input type="text" name="coupon_price" id="coupon_price"
			placeholder="예) 3000">

			<label for="coupon_price"> 사용 여부 </label>
			<input type="radio" name="coupon_use" id="coupon_use" value="사용가능"
			checked> 사용가능
			<input type="radio" name="coupon_use" id="coupon_use" value="사용불가능">
			이미사용된쿠폰

			<button type="submit">등록</button>
			<button type="reset">취소</button>
	</form>

	<a href="./CouponSelect.jo"> 결제 목록 </a>

</body>
</html>