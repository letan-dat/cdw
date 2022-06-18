<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/login.css">
</head>
<body>

	
	<jsp:directive.include file="header.jsp" />
	<div class="login">
		<div class="login-page">
			<div class="form">
				<h2>ĐĂNG NHẬP</h2>
				<form class="login-form">
					<input type="text" placeholder="Tên đăng nhập" /> <input
						type="password" placeholder="Mật khẩu" />
					<button>login</button>
					<p class="message">
						Bạn chưa có tài khoản?<a href="#"> Tạo tài khoản ngay</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<jsp:directive.include file="footer.jsp" />

</body>
</html>