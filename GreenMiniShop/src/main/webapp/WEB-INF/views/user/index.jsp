<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<!-- Start Slider -->
	<div id="slides-shop" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left"><img
				src="<%=request.getContextPath()%>/assets/images/banner-01.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Chào mừng bạn đến với <br> Green Mini
								</strong>
							</h1>
							<p>
								<a class="btn hvr-hover" href="#">Shop New</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-center"><img
				src="<%=request.getContextPath()%>/assets/images/banner-02.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Chào mừng bạn đến với <br> Green Mini
								</strong>
							</h1>
							<p>
								<a class="btn hvr-hover" href="#">Cửa hàng</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-right"><img
				src="<%=request.getContextPath()%>/assets/images/sm-banner-1.jpg"
				alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Chào mừng bạn đến với <br> Green Mini
								</strong>
							</h1>
							<p>
								<a class="btn hvr-hover" href="#">Cửa hàng</a>
							</p>
						</div>
					</div>
				</div></li>
		</ul>

		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right"
				aria-hidden="true"></i></a> <a href="#" class="prev"><i
				class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End Slider -->

	<!---------- hearder------>
	<jsp:directive.include file="header.jsp" />


	<!-- Start Categories  -->
	<div class="categories-shop">
		<div class="container">
			<div class="row">
				<c:forEach items="${category}" var="cate">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="shop-cat-box">
							<img class="img-fluid"
								src="<%=request.getContextPath()%>/assets/images/${cate.image_id.image}.jpg"
								alt="" /> <a class="btn hvr-hover" href="#">${cate.name}</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- End Categories -->
	<div class="latest-blog">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<img class="sm-banner" style="width: 550px; height: 400px;"
						src="<%=request.getContextPath()%>/assets/images/sm-banner-1.jpg"
						alt="" />
				</div>
				<div class="col-6">
					<img class="sm-banner" style="width: 550px; height: 400px;"
						src="<%=request.getContextPath()%>/assets/images/sm-banner-2.jpg"
						alt="" />
				</div>
			</div>
		</div>
	</div>
	<!-- Start Products  -->
	<div class="products-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>Danh sách sản phẩm</h1>

					</div>
				</div>
			</div>


			<div class="row special-list">
				<c:forEach items="${trees}" var="tree">
					<div class="col-lg-3 col-md-6 special-grid best-seller">
						<div class="products-single fix">
							<div class="box-img-hover">
								<div class="type-lb">
									<p class="sale">Sale</p>
								</div>
								<img
									src="<%=request.getContextPath()%>/assets/images/${tree.image_id.image}.jpg"
									class="img-fluid" alt="Image"
									style="height: 255px; width: 255px">
								<div class="mask-icon">
									<ul>
										<li><a href="/user/detail?id=${tree.id}" data-toggle="tooltip"
											data-placement="right" title="View"> <img
												src="<%=request.getContextPath()%>/assets/images/view.png"
												style="height: 20px; width: 20px">
										</a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="right" title="Add to Wishlist"><img
												src="<%=request.getContextPath()%>/assets/images/wishlist.png"
												style="height: 30px; width: 30px"></a></li>
									</ul>
									<a class="cart" href="#">Thêm vào giỏ hàng</a>
								</div>
							</div>
							<div class="why-text">
								<h4>${tree.name}</h4>
								<h5>${tree.price}đ</h5>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">

							<!-- <button data-filter=".top-featured">Xem thêm</button> -->
							<a href="/user/shop" class="btn">Xem thêm</a>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- End Products  -->
	<!---------- footer------>
	<jsp:directive.include file="footer.jsp" />
</body>
</html>