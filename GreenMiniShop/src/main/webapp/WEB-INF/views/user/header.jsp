<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Start Main Top -->
	<div class="main-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="text-slid-box">
						<div id="offer-box" class="carouselTicker">
							<ul class="offer-box">
								<li><i class="fab fa-opencart"></i> Nhập mã giảm giá để
									nhận ưu đãi</li>
								<li><i class="fab fa-opencart"></i> Mã giảm giá giảm từ 10%
									đến 30%</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="right-phone-box">
						<p>
							SĐT : <a href="#"> 0349096257</a>
						</p>
					</div>
					<div class="our-link">
						<ul>
							<li><a href="#">Tài khoản</a></li>
							<li><a href="#">Địa chỉ shop</a></li>
							<li><a href="/user/contact">Liên hệ</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Main Top -->

	<!-- Start Main Top -->
	<header class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<a href="/Trang-chu"><img
						src="<%=request.getContextPath()%>/assets/images/logo.png"
						class="logo" alt="" style="margin: 8px"></a>
				</div>
				<div class="col-md-10">
				<div style="max-height: 50px;">
					<div class="row" >
						<div class="col-md-8  search-bg">
							<form action="#">
								<div class="form-control">
									<input type="text" placeholder="Tìm kiếm ở đây">
									<button type="Submit">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</form>

						</div>

						<div class="col-md-4">
							<div class="row infor">
								<div class=" user_icon">
									<span><img alt=""
										src="<%=request.getContextPath()%>/assets/images/user.png" ></span>
								</div>
								<div class="sig">
									<div>
										<a href="/user/login" class="">Đăng nhập</a>
									</div>
									<a href="#" class="">Đăng ký</a>
								</div>
								<div>
									<a href="/user/cart" class="bag_icon"><img alt=""
										src="<%=request.getContextPath()%>/assets/images/3.jpg"
										style="width: 40px; height: 40px">
										<div class="cart-box">
											<span id="#cart-total"> <b>0</b>
											</span>
										</div> </a>
								</div>
					</div></div>
				</div>

				<div class="row" style="max-height: 40px;   margin-top: 0px;">
					<nav class="navbar navbar-expand-lg navbar-default bootsnav" style="max-height: 30px">
						<div class="container">
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="navbar-menu">
								<ul class="nav navbar-nav menu_list" data-in="fadeInDown"
									data-out="fadeOutUp">
									<li class="nav-item"><a class="nav-link" href="/">Trang
											chủ</a></li>
									<li class="nav-item"><a class="nav-link" href="/user/about">Giới
											thiệu</a></li>
									<li class="dropdown megamenu-fw"><a href="/user/shop"
										class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Sản
											phẩm &#8744</a>
										<ul class="dropdown-menu megamenu-content" role="menu">
											<li>
												<div class="row">
													<div class="col-menu col-md-3">
														<h6 class="title">Top</h6>
														<ul class="menu-col">
															<li><a href="shop.html">Jackets</a></li>
															<li><a href="shop.html">Shirts</a></li>
															<li><a href="shop.html">Sweaters & Cardigans</a></li>
															<li><a href="shop.html">T-shirts</a></li>
														</ul>
													</div>
													<!-- end col-3 -->
													<div class="col-menu col-md-3">
														<h6 class="title">Bottom</h6>
														<ul class="menu-col">
															<li><a href="shop.html">Swimwear</a></li>
															<li><a href="shop.html">Skirts</a></li>
															<li><a href="shop.html">Jeans</a></li>
															<li><a href="shop.html">Trousers</a></li>
														</ul>
													</div>
													<!-- end col-3 -->
													<div class="col-menu col-md-3">
														<h6 class="title">Clothing</h6>
														<ul class="menu-col">
															<li><a href="shop.html">Top Wear</a></li>
															<li><a href="shop.html">Party wear</a></li>
															<li><a href="shop.html">Bottom Wear</a></li>
															<li><a href="shop.html">Indian Wear</a></li>
														</ul>
													</div>
													<div class="col-menu col-md-3">
														<h6 class="title">Accessories</h6>
														<ul class="menu-col">
															<li><a href="shop.html">Bags</a></li>
															<li><a href="shop.html">Sunglasses</a></li>
															<li><a href="shop.html">Fragrances</a></li>
															<li><a href="shop.html">Wallets</a></li>
														</ul>
													</div>
													<!-- end col-3 -->
												</div> <!-- end row -->
											</li>
										</ul></li>
									<li class="dropdown active"><a href="#"
										class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Cửa
											hàng &#8744</a>
										<ul class="dropdown-menu">
											<li><a href="/user/cart">Giỏ hàng</a></li>
											<li><a href="/user/checkout">Thanh toán</a></li>
											<li><a href="/user/my-accountl">Tài khoản</a></li>
											<li><a href="wishlist.html">Danh sách yêu thích</a></li>
											<li><a href="shop-detail.html">Đơn hàng</a></li>
										</ul></li>
									<li class="nav-item"><a class="nav-link"
										href="/user/service">Dịch vụ</a></li>
								</ul>
							</div>
							<!-- /.navbar-collapse -->
						</div>
						<!-- Start Side Menu -->
						<div class="side">
							<a href="#" class="close-side"><i class="fa fa-times"></i></a>
							<li class="cart-box">
								<ul class="cart-list">
									<li><a href="#" class="photo"><img
											src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
										<h6>
											<a href="#">Delica omtantur </a>
										</h6>
										<p>
											1x - <span class="price">$80.00</span>
										</p></li>
									<li><a href="#" class="photo"><img
											src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
										<h6>
											<a href="#">Omnes ocurreret</a>
										</h6>
										<p>
											1x - <span class="price">$60.00</span>
										</p></li>
									<li><a href="#" class="photo"><img
											src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
										<h6>
											<a href="#">Agam facilisis</a>
										</h6>
										<p>
											1x - <span class="price">$40.00</span>
										</p></li>
									<li class="total"><a href="#"
										class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
										class="float-right"><strong>Total</strong>: $180.00</span></li>
								</ul>
							</li>
						</div>
					</nav>
				</div>
			</div></div>
		</div>
		</div>
		<!-- End Side Menu -->

		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

</body>

</html>