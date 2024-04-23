<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상세 결제 정보</title>
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<link rel="stylesheet" type="text/css" href="./css/global.css">
</head>
<body>
	<header id="main-header" class="py-2 btn-dark text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>상세 결제 정보</h1>
				</div>
			</div>
		</div>
	</header>
	<section class="py-4 mb-4 bg-light"></section>
	<section id="department">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>상세 결제 목록</h5>
						</div>
						<div class="card-body">
							<table class="table table-hover">
								<thead class="thead-light">
									<tr class="text-center">
										<th>결제 코드 번호</th>
										<th>카드번호</th>
										<th>카드사</th>
										<th>결제 금액</th>
										<th>결제일</th>
									</tr>
								</thead>
								<tbody>
									<tr class="text-center">
										<td>${paymentDTO.payment_code}</td>
										<td>${paymentDTO.payment_card_num}</td>
										<td>${paymentDTO.payment_card_company}</td>
										<td>${paymentDTO.payment_total}</td>
										<td>${paymentDTO.payment_date}</td>
									</tr>
								</tbody>

							</table>
							<div class="row">
								<div class="col-md-4">
									<a href="./PaymentSelect.jn" class="btn btn-primary btn-block">
										결제 목록 </a>
								</div>
								<div class="col-md-4">
									<a
										href="./PaymentUpdate.jn?payment_code=${paymentDTO.payment_code}"
										class="btn btn-warning btn-block"> 결제 내역 수정 </a>
								</div>
								<div class="col-md-4">
									<a
										href="./PaymentDeleteView.jn?payment_code=${paymentDTO.payment_code}"
										class="btn btn-danger btn-block"> 결제 내역 삭제 </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>