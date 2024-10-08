<%--
  Created by IntelliJ IDEA.
  User: kdy94
  Date: 2023-11-10
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Ogani Template">
	<meta name="keywords" content="Ogani, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Ogani | Template</title>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

	<!-- Css Styles -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="css/style.css?after" type="text/css">
	<script src="https://kit.fontawesome.com/a64ea1fa2d.js" crossorigin="anonymous"></script>

	<script type="text/javascript">
		function nextPage(var1, var2){
			document.cgList.action = "/shopping/mall_categoryList";
			document.cgList.code.value = var1;
			document.cgList.cname.value = var2;
			document.cgList.submit();
		}
	</script>

</head>

<body>

<form name="cgList" method="post">
	<input type="hidden" name="code">
	<input type="hidden" name="cname">
</form>

<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
	<div class="humberger__menu__logo">
		<a href="#"><img src="img/logo.png" alt=""></a>
	</div>
	<div class="humberger__menu__cart">
		<ul>
			<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
			<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
		</ul>
		<div class="header__cart__price">item: <span>$150.00</span></div>
	</div>
	<div class="humberger__menu__widget">
		<div class="header__top__right__language">
			<img src="img/language.png" alt="">
			<div>English</div>
			<%--<span class="arrow_carrot-down"></span>--%>
			<ul>
				<li><a href="#">Spanis</a></li>
				<li><a href="#">English</a></li>
			</ul>
		</div>
		<div class="header__top__right__auth">
			<a href="#"><i class="fa fa-user"></i> Login</a>
		</div>
	</div>
	<nav class="humberger__menu__nav mobile-menu">
		<ul>
			<li class="active"><a href="./index.html">Home</a></li>
			<li><a href="./shop-grid.html">Shop</a></li>
			<li><a href="#">Pages</a>
				<ul class="header__menu__dropdown">
					<li><a href="./shop-details.html">Shop Details</a></li>
					<li><a href="./shoping-cart.html">Shoping Cart</a></li>
					<li><a href="./checkout.html">Check Out</a></li>
					<li><a href="./blog-details.html">Blog Details</a></li>
				</ul>
			</li>
			<li><a href="./blog.html">Blog</a></li>
			<li><a href="./contact.html">Contact</a></li>
		</ul>
	</nav>
	<div id="mobile-menu-wrap"></div>
	<div class="header__top__right__social">
		<a href="https://www.facebook.com/?locale=ko_KR"><i class="fa fa-facebook"></i></a>
		<a href="https://www.instagram.com/accounts/login/"><i class="fa fa-instagram"></i></a>
		<a href="https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoia28ifQ%3D%3D%22%7D"><i class="fa fa-twitter"></i></a>
		<a href="https://www.pinterest.co.kr/login/"><i class="fa fa-pinterest"></i></a>
	</div>
	<div class="humberger__menu__contact">
		<ul>
			<li><i class="fa fa-envelope"></i> kdy9416@naver.com </li>
			<li>10만원 이상 주문 시 무료 배송</li>
		</ul>
	</div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> kdy9416@naver.com </li>
							<li>10만원 이상 주문 시 무료 배송</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="https://www.facebook.com/?locale=ko_KR"><i class="fa fa-facebook"></i></a>
							<a href="https://www.instagram.com/accounts/login/"><i class="fa fa-instagram"></i></a>
							<a href="https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoia28ifQ%3D%3D%22%7D"><i class="fa fa-twitter"></i></a>
							<a href="https://www.pinterest.co.kr/login/"><i class="fa fa-pinterest"></i></a>
						</div>
						<div class="header__top__right__language">
							<img src="img/language2.png" alt="">
							<div>Korean</div>
							<%--<span class="arrow_carrot-down"></span>--%>
							<ul>
								<li><a href="#">Korean</a></li>
							</ul>
						</div>
						<div class="header__top__right__auth">
							<c:if test="${empty login}">
								<a href="/shopping/login"><i class="fa fa-user"></i> 로그인</a>
							</c:if>
							<c:if test="${!empty login}">
								<a href="/shopping/logout"><i class="fa fa-user"></i> 로그아웃</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="./"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<%--<li class="active"><a href="./index.html">Home</a></li>
                        <li><a href="./shop-grid.html">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.html">Shop Details</a></li>
                                <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="./checkout.html">Check Out</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li> --%>
						<li class="active"><a href="/shopping/">Home</a></li>
						<c:if test="${!empty login}">
							<li><a href="/shopping/cartList">장바구니</a></li>
							<li><a href="/shopping/board/list">문의하기</a></li>
							<li><a href="/shopping/myPage">마이페이지</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
			<%--<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>
					&lt;%&ndash;<div class="header__cart__price">item: <span>$150.00</span></div>&ndash;%&gt;
				</div>
			</div>--%>
		</div>
		<%--<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>--%>
	</div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="hero__categories">
					<div class="hero__categories__all">
						<i class="fa fa-bars"></i>
						<span>카테고리</span>
					</div>
					<ul>
						<c:forEach var="cdto" items="${listCategory}">
							<li><a href="javascript:nextPage('${cdto.code}','${cdto.cname}')">${cdto.cname}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>