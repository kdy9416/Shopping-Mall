<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript"> 
	function checkDel(pnum, pimage){
		var isDel = window.confirm("정말로 삭제하시겠습니까?");
		if (isDel){
			location.href="/shopping/goodsDelete?pnum="+pnum + "&pimage="+pimage;
		} 
	}
</script>
<button type="button" onclick="location.href='/shopping/goodsManage'">뒤로가기</button>
<div align="center">
<table border="1" width="800">
	<caption>상품목록</caption>
	<form action="/shopping/goodsSearch" method="post">
		<select name="condition">
			<option value="cate">카테고리명</option>
			<option value="name">상품명</option>
			<option value="all">전체상품</option>
		</select>
		<input type="text" name="search">
		<input type="submit" value="검색">		
	</form>
	<tr bgcolor="yellow">
		<th>번호</th>
		<th>상품명</th>
		<th>상품코드</th>
		<th>이미지</th>
		<th>가격</th>
		<th>수량</th>
		<th>수정|삭제|재고</th>
	</tr>
<c:if test="${empty listProduct}">
	<tr>
		<td colspan="7">등록된 상품이 없습니다.</td>
	</tr>		
</c:if>	
<c:forEach var="vo" items="${listProduct}">
	<tr>
		<td>${vo.pnum}</td>
		<td>${vo.pname}</td>
		<td>${vo.pcode}</td>
		<td>
				<img src="images/${vo.pimage}" border="0" width="40" height="40">
		</td>
		<td>${vo.price}</td>
		<td>${vo.pqty}</td>
		<td>
			<a href="/shopping/goodsUpdate?num=${vo.pnum}">수정</a>
			<a href="javascript:checkDel('${vo.pnum}','${vo.pimage}')">삭제</a>
		</td>
	</tr>
</c:forEach>
</table>
		<a class="page-link" href="#" 
			style="background-color: #ff52a0; margin-top: 0; heght: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">이전</a>

			<a href="#" class="page-link" style="margin-top: 0; height: 40px; color: pink; border: 1px solid pink;"></a>
	
		
		<a class="page-link" href="#" 
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">다음</a>
</div>