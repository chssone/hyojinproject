<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 결제 입력 </title>

	<c:forEach var="arrayList" items="${arrayList}">

	<c:if test="${arrayList.payment_code==param.payment_code}">
		<script type="text/javascript">
		
		alert("입력하신 ${param.payment_code}번의 결제 코드 번호가 존재합니다. 다시 입력하세요");
		location.href="./PaymentInsertView.jn";
		</script>
	</c:if>
</c:forEach>
</head>
<body>
	<script type="text/javascript">
	
	alert("입력하신 ${paymentDTO.payment_code}번의 결제 코드 번호를 등록하였습니다.");
	location.href="./PaymentSelect.jn"
	
	</script>

</body>
</html>