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
					<h2>Chi tiết sản phẩm</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active">Chi tiết sản phẩm</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Detail  -->
	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div id="carousel-example-1"
						class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src="<%=request.getContextPath()%>/assets/images/${tree.image_id.image}.jpg"
									alt="First slide">
							</div>

						</div>

					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="single-product-details">
						<h2>${tree.name}</h2>
						<h5>
							<del>$ 60.00</del>
							$40.79
						</h5>
						<p class="available-stock">
							<span> More than 20 available / <a href="#">8 sold </a></span>
						<p>
						<h4>Mô tả sản phẩm:</h4>
						<p>${tree.description}</p>
						<ul>
							<li>
								<div class="form-group quantity-box">
									<label class="control-label">Số lượng</label> <input
										class="form-control" value="0" min="0" max="20" type="number">
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn">
								<a class="btn hvr-hover" data-fancybox-close="" href="#">Mua
									ngay</a> <a class="btn hvr-hover" data-fancybox-close="" href="#">Thêm
									vào giỏ hàng</a>
							</div>
						</div>

						<div class="add-to-btn">
							<div class="add-comp">
								<a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i>
									Thêm vào danh sách yêu thích</a>
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

	---------addCart----------
	<script>
		const btn = document.querySelectorAll("button")
		btn.forEach(function (button, index) {
			button.addEventListener("click", function (event){
				var btnItem = event.target
				var product = btnItem.parentElement
				var img = product.querySelector("img").src
				var name = product.querySelector("h1").innerText
				var price = product.querySelector("span").innerText
				addCart(img, name, price)
			})
		})
		function addCart (img, name, price) {
			var addtr = document.createElement("tr")
			var trcontent = ''
			addtr.innerHTML = trcontent
			var cartTable = document.querySelector("tbody")
			cartTable.append(addtr)
		}
	</script>

</body>
</html>