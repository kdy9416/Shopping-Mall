<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="mall_top.jsp"%>
<!-- mall_cgProdList.jsp -->
<div align="center">
	<c:if test="${empty cateGoods}">
		${param.cname}
		카테고리에 등록된 상품이 없습니다. 
	</c:if>
	<c:if test="${not empty cateGoods}">
		<hr color="green" width="300">
		<h2>${param.cname}
		</h2>
		<hr color="green" width="300">
		<table width="80%" border="0" align="center">
 			<c:set var="co" value="1"/>
 			<tr>
				<c:forEach var="vo" items="${cateGoods}">
					<td align="center">
						<a href="/shopping/mall_goodsView?code=${param.code}&pnum=${vo.pnum}">
						<img src="images/${vo.pimage}" width="80" height="60"><br>
						${vo.pname} </a> <br>
						<font color="blue">${vo.price}</font>원<br>
						<font color="blue">${vo.point}</font>point
					</td>
					<c:set var="co" value="${co+1}"/>
					<c:if test="${co>3}">
						</tr><tr>
						<c:set var="co" value="1"/>
					</c:if>	
				</c:forEach>
			</tr>	
		</table> 
	</c:if>
</div>
<%@ include file="mall_bottom.jsp"%>