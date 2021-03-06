<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- mall_top.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>쇼핑몰</title>
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
	<div align="center">
		<table border="1" width="800" height="600">
			<tr height="10%">
				<td align="center" colspan="2"><a href="/shopping/">쇼핑몰</a> | 
				<c:if test="${!empty login}"><a href="/shopping/cartList">장바구니|</a></c:if>
				<c:if test="${empty login}"> <a href="/shopping/user/login">로그인</a>| </c:if> 
				<c:if test="${!empty login}"> <a href="/shopping/user/logout">로그아웃</a>|</c:if>
				<c:if test="${!empty login}"> <a href="/shopping/board/list">문의하기|</a></c:if>  
				<c:if test="${!empty login}"> <a href="/shopping/myPage">마이페이지</a> </c:if> </td>
			</tr>
			<tr>
				<td width="20%" align="center" valign="top">
					<font size="3">카테고리</font><br>
					<table border="1">
						<c:forEach var="cdto" items="${listCategory}">
							<tr>
								<td align="center">
									<a href="javascript:nextPage('${cdto.code}','${cdto.cname}')">
										${cdto.cname}[${cdto.code}]
									</a>
								</td>
							</tr>
						</c:forEach>	
					</table>
				</td>		
				<td>
								