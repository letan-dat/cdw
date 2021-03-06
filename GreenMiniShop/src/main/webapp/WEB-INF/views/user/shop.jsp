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
					<h2>Cửa hàng</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Cửa hàng</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Page  -->
	<div class="shop-box-inner">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
					<div class="product-categori">
						<div class="search-product">
							<form action="#">
								<input class="form-control" placeholder="Tìm kiếm" type="text">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
						<div class="filter-sidebar-left">
							<div class="title-left">
								<h3>Loại sản phẩm</h3>
							</div>
							<div
								class="list-group list-group-collapse list-group-sm list-group-tree"
								id="list-group-men" data-children=".sub-men">
								<c:forEach items="${category}" var="cate">
									<a href="#" class="list-group-item list-group-item-action">
										${cate.name} </a>
								</c:forEach>
							</div>
						</div>
						<div class="filter-price-left">
							<div class="title-left">
								<h3>Giá</h3>
							</div>
						</div>
						<div class="filter-brand-left">
							
							<div class="brand-box">
								<ul>
									<li>
										<div class="radio radio-danger">
											<input name="survey" id="Radios1" value="Yes" type="radio">
											<label for="Radios1"> Tất cả </label>
										</div>
									</li>
									<li>
										<div class="radio radio-danger">
											<input name="survey" id="Radios2" value="No" type="radio">
											<label for="Radios2"> Dưới 100.000đ </label>
										</div>
									</li>
									<li>
										<div class="radio radio-danger">
											<input name="survey" id="Radios3" value="declater"
												type="radio"> <label for="Radios3"> Từ 100.000đ - đến 200.000đ </label>
										</div>
									</li>
									<li>
										<div class="radio radio-danger">
											<input name="survey" id="Radios4" value="declater"
												type="radio"> <label for="Radios4"> Trên 200.000đ </label>
										</div>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
				<div
					class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
					<div class="right-product-box">
						<div class="product-item-filter row">
							<div class="col-12 col-sm-8 text-center text-sm-left">
								<div class="toolbar-sorter-right">
									<span>Sắp xếp </span> <select id="basic"
										class="selectpicker show-tick form-control"
										data-placeholder="$ USD">
										<option data-display="Select">Không</option>
										<option value="2">Giá cao → Giá thấp</option>
										<option value="3">Giá thấp → Giá cao</option>
										<option value="4">Giảm giá</option>
									</select>
								</div>
								<p>?</p>
							</div>
							<div class="col-12 col-sm-4 text-center text-sm-right">
								<ul class="nav nav-tabs ml-auto">
									<li><a class="nav-link active" href="#grid-view"
										data-toggle="tab"> <i class="fa fa-th"></i>
									</a></li>
									<li><a class="nav-link" href="#list-view"
										data-toggle="tab"> <i class="fa fa-list-ul"></i>
									</a></li>
								</ul>
							</div>
						</div>

						<div class="row product-categorie-box">
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade show active"
									id="grid-view">
									<div class="row">
										<c:forEach items="${trees}" var="tree">
											<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
												<div class="products-single fix">
													<div class="box-img-hover">
														<div class="type-lb">
															<!-- <p class="sale">Sale</p> -->
															<p hidden="true" class="${tree.category_id.name}">${tree.category_id.name}</p>
														</div>
														<img
															src="<%=request.getContextPath()%>/assets/images/${tree.image_id.image}.jpg"
															class="img-fluid" alt="Image">
														<div class="mask-icon">
															<ul>
																<li><a href="/user/detail?id=${tree.id}" 
																	   data-toggle="tooltip" data-placement="right" title="View">
																	   <img	src="<%=request.getContextPath()%>/assets/images/view.png"
																		style="height: 30px; width: 30px">
																	</a>
																</li>
																<li><a href="#" data-toggle="tooltip"
																	data-placement="right" title="Add to Wishlist">
																	<img src="<%=request.getContextPath()%>/assets/images/wishlist.png"
																		style="height: 25px; width: 25px">
																	</a>
																</li>
															</ul>
															<a class="cart" href="#">Thêm vào giỏ hàng</a>
														</div>
													</div>
													<div class="why-text">
														<h4>${tree.name}</h4>
														<h5>${tree.price}</h5>
													</div>
												</div>
											</div>

										</c:forEach>
									</div>
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