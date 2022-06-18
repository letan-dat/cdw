<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-----hearder------>
	<jsp:directive.include file="header.jsp" />
	<!-----/header------>
	
	<!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Giỏ hàng</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Giỏ hàng</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th></th>
									<th>Sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="thumbnail-img"><a href="#"> <img
											class="img-fluid" src="images/bach-kim.jpg" alt="" />
									</a></td>
									<td class="name-pr"><a href="#"> Bạch kim </a></td>
									<td class="price-pr">
										<p>75.000đ</p>
									</td>
									<td class="quantity-box"><input type="number" size="4"
										value="1" min="0" step="1" class="c-input-text qty text"></td>
									<td class="total-pr">
										<p>75.000đ</p>
									</td>
									<td class="remove-pr"><a href="#"> <i
											class="fas fa-times"></i>
									</a></td>
								</tr>
								<tr>
									<td class="thumbnail-img"><a href="#"> <img
											class="img-fluid" src="images/be-sen-da.jpg" alt="" />
									</a></td>
									<td class="name-pr"><a href="#"> Bể sen đá </a></td>
									<td class="price-pr">
										<p>75.000đ</p>
									</td>
									<td class="quantity-box"><input type="number" size="4"
										value="1" min="0" step="1" class="c-input-text qty text"></td>
									<td class="total-pr">
										<p>75.000đ</p>
									</td>
									<td class="remove-pr"><a href="#"> <i
											class="fas fa-times"></i>
									</a></td>
								</tr>
								<tr>
									<td class="thumbnail-img"><a href="#"> <img
											class="img-fluid" src="images/xuong-rong-banh-bao.jpg" alt="" />
									</a></td>
									<td class="name-pr"><a href="#"> Xương rồng bánh bao </a>
									</td>
									<td class="price-pr">
										<p>75.000đ</p>
									</td>
									<td class="quantity-box"><input type="number" size="4"
										value="1" min="0" step="1" class="c-input-text qty text"></td>
									<td class="total-pr">
										<p>75.000đ</p>
									</td>
									<td class="remove-pr"><a href="#"> <i
											class="fas fa-times"></i>
									</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="row my-5">
				<div class="col-lg-6 col-sm-6">
					<div class="coupon-box">
						<div class="input-group input-group-sm">
							<input class="form-control"
								placeholder="Nhập mã giảm giá tại đây" aria-label="Coupon code"
								type="text">
							<div class="input-group-append">
								<button class="btn btn-theme" type="button">Áp dụng</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="col-12 d-flex shopping-box">
						<a href="/user/checkout" class="ml-auto btn hvr-hover">Thanh
							toán</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	

<!------footer------>
	<jsp:directive.include file="footer.jsp" />
<!-----/footer------>	
</body>
</html>