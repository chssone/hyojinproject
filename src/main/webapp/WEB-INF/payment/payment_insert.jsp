<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 입력</title>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
    $("#sign_payment").submit(function() {
        // PAYMENT_CODE 유효성 검사
        var paymentCode = $("input[name='payment_code']").val();
        if (!paymentCode) {
            alert("결제 코드 번호를 입력하세요.");
            $("input[name='payment_code']").focus();
            return false;
        } else if (!/^\d+$/.test(paymentCode)) {
            alert("결제 코드 번호는 숫자만 입력 가능합니다.");
            $("input[name='payment_code']").focus();
            return false;
        }
        
        // PAYMENT_CARD_NUM 유효성 검사
        var cardNum = $("input[name='payment_card_num']").val();
        if (!cardNum) {
            alert("카드번호를 입력하세요.");
            $("input[name='payment_card_num']").focus();
            return false;
        } else if (!/^\d{4}-\d{4}-\d{4}-\d{4}$/.test(cardNum)) {
            alert("카드번호는 '-'가 포함된 숫자 16자리를 입력해주세요.");
            $("input[name='payment_card_num']").focus();
            return false;
        }
        
        // PAYMENT_CARD_COMPANY 유효성 검사
        var cardCompany = $("input[name='payment_card_company']").val();
        if (!cardCompany) {
            alert("카드사를 입력하세요.");
            $("input[name='payment_card_company']").focus();
            return false;
        }
        
        // PAYMENT_TOTAL 유효성 검사
		 var paymentTotal = $("input[name='payment_total']").val();
 	     if (!paymentTotal) {
            alert("결제 금액을 입력하세요.");
            $("input[name='payment_total']").focus();
            return false;
        } else if (!/^\d+(\.\d{1,2})?$/.test(paymentTotal)) {
            alert("결제 금액은 숫자만 입력 가능합니다.");
            $("input[name='payment_total']").focus();
            return false;
        }
        
        return true; // 모든 유효성 검사를 통과하면 제출을 허용합니다.
    });
});



</script>
</head>
<body>
	<h1> 결제 정보 입력 </h1>
	
	<h5>결제 입력</h5>
	<form action="./PaymentInsert.jn" method="post" id="sign_payment">
	
	<label for="payment_code"> 결제 코드 번호 </label>	
	<input type="text" name="payment_code" id="payment_code" placeholder="1~1000까지 숫자 중 입력">
	
	<label for="payment_card_num"> 카드번호 </label>
	<input type="text" name="payment_card_num" id="payment_card_num" placeholder="예) 1234-1234-1234-1234">
	
	<label for="payment_card_company"> 카드사 </label>
	<input type="text" name="payment_card_company" id="payment_card_company" placeholder="예) 국민">
	
	<label for="payment_total"> 결제 금액 </label>
	<input type="text" name="payment_total" id="payment_total" placeholder="예) 5000">
	
	<button type="submit"> 등록 </button>
	<button type="reset"> 취소 </button>
	
	</form>
	
	<a href="./PaymentSelect.jn"> 결제 목록 </a>

</body>
</html>