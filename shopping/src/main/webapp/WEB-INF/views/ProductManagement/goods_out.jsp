<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!-- prod_outQty.jsp -->
<html>
<head>
	<title>상품출고</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
	<h1 class="text-secondary">상품 출고</h1>
</div>
	<div align="center">
	<%--<h2>상 품 출 고</h2>--%>
	<form name="f" action="/shopping/goods_output2" method="post">
		현재 상품 갯수 : ${getProduct.pqty}개<br>
		${getProduct.pname} 상품 출고 : <input type="text" name="out">개
		<input type="hidden" name="pnum" value="${getProduct.pnum}"/>
		<input type="hidden" name="pqty" value="${getProduct.pqty}"/>
		<input type="submit" class="btn btn-outline-primary" value="출고">
	</form>
	</div>
<div class="jumbotron text-center mt-5 mb-0">
	<h3 class="text-secondary">Shopping-Mall</h3>
	<p>Shopping-Mall Homepage is powered by <span class="text-primary">DONGYOON</span> / Designed by <span class="text-primary">DONGYOON</span></p>
</div>
</body>
</html>