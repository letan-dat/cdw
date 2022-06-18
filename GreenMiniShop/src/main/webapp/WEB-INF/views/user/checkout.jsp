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
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Thanh toán</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Thanh toán</li>
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
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="checkout-address">
						<div class="title-left">
							<h3>Thông tin nhận hàng</h3>
						</div>
						<form class="needs-validation" novalidate>

							<div class="mb-3">
								<label for="firstName">Họ và tên *</label> <input type="text"
									class="form-control" id="firstName" placeholder="" value=""
									required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>


							<div class="mb-3">
								<label for="username">Số điện thoại *</label>
								<div class="input-group">
									<input type="text" class="form-control" id="username"
										placeholder="" required>
									<div class="invalid-feedback" style="width: 100%;">Your
										username is required.</div>
								</div>
							</div>
							<div class="mb-3">
								<label for="email">Email *</label> <input type="email"
									class="form-control" id="email" placeholder="">
								<div class="invalid-feedback">Please enter a valid email
									address for shipping updates.</div>
							</div>
							<div class="mb-3">
								<label for="address">Địa chỉ *</label> <input type="text"
									class="form-control" id="address" placeholder="" required>
								<div class="invalid-feedback">Please enter your shipping
									address.</div>
							</div>


							<div class="payment-method-box">
								<div class="title-left">
									<h3>Phương thức thanh toán</h3>
								</div>
								<div class="mb-4">
									<div class="custom-control custom-radio">
										<input id="payment" name="payment-option"
											class="custom-control-input" checked="checked" type="radio">
										<label class="custom-control-label" for="payment">Thanh
											toán khi giao hàng</label> <span class="float-right font-weight-bold"></span>
									</div>
									<div class="ml-4 mb-2 small">(Quý khách chỉ thanh toán
										khi nhận được hàng)</div>

								</div>
							</div>
							<div class="shipping-method-box">
								<div class="title-left">
									<h3>Vận chuyển</h3>
								</div>
								<div class="mb-4">
									<div class="custom-control custom-radio">
										<input id="shippingOption1" name="shipping-option"
											class="custom-control-input" checked="checked" type="radio">
										<label class="custom-control-label" for="shippingOption1">Giao
											hàng tận nhà</label> <span class="float-right font-weight-bold">30.000</span>
									</div>
								</div>
							</div>
							<hr class="mb-1">
						</form>
					</div>
				</div>
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="row">

						<div class="col-md-12 col-lg-12">
							<div class="odr-box">
								<div class="title-left">
									<h3>Đơn hàng</h3>
								</div>
								<div class="rounded p-2 bg-light">
									<div class="media mb-2 border-bottom">
										<div class="media-body">
											<a href="detail.html"> Bạch kim</a>
											<div class="small text-muted">
												Giá: 75.000đ <span class="mx-2">|</span> Số lượng: 1 <span
													class="mx-2">|</span> Thành tiền: 75.000đ
											</div>
										</div>
									</div>
									<div class="media mb-2 border-bottom">
										<div class="media-body">
											<a href="detail.html"> Bể sen đá</a>
											<div class="small text-muted">
												Giá: 75.000đ <span class="mx-2">|</span> Số lượng: 1 <span
													class="mx-2">|</span> Thành tiền: 75.000đ
											</div>
										</div>
									</div>
									<div class="media mb-2">
										<div class="media-body">
											<a href="detail.html"> Xương rồng bánh bao</a>
											<div class="small text-muted">
												Số lượng: 75.000đ <span class="mx-2">|</span> Qty: 1 <span
													class="mx-2">|</span> Thành tiền: 75.000đ
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 col-lg-12">
							<div class="order-box">
								<div class="title-left">
									<h3>Trị giá đơn hàng</h3>
								</div>
								<div class="d-flex">
									<div class="font-weight-bold">Sản phẩm</div>
									<div class="ml-auto font-weight-bold">Thành tiền</div>
								</div>
								<hr class="my-1">
								<div class="d-flex">
									<h4>Tạm tính</h4>
									<div class="ml-auto font-weight-bold">$ 440</div>
								</div>
								<div class="d-flex">
									<h4>Chiết khấu</h4>
									<div class="ml-auto font-weight-bold">$ 40</div>
								</div>
								<hr class="my-1">
								<div class="d-flex">
									<h4>Phiếu giảm giá</h4>
									<div class="ml-auto font-weight-bold">$ 10</div>
								</div>
								<div class="d-flex">
									<h4>Thuế</h4>
									<div class="ml-auto font-weight-bold">$ 2</div>
								</div>
								<div class="d-flex">
									<h4>Phí giao hàng</h4>
									<div class="ml-auto font-weight-bold">Free</div>
								</div>
								<hr>
								<div class="d-flex gr-total">
									<h5>Tổn cộng</h5>
									<div class="ml-auto h5">$ 388</div>
								</div>
								<hr>
							</div>
						</div>
						<div class="col-12 d-flex shopping-box">
							<a href="checkout.html" class="ml-auto btn hvr-hover">Đặt
								hàng</a>
						</div>
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