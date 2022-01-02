<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="mall_top.jsp"%>  
<table width="99%" border="1" align="center">
	<tr class="m2"> 
		<td colspan="6" align="center">
			<h4>��ٱ��� ����</h4>
		</td>
	</tr>
	<tr class="m1">
		<th width="10%">��ȣ</th>
		<th width="30%">��ǰ��</th>
		<th width="10%">����</th>
		<th width="20%">�ܰ�</th>
		<th width="20%">�ݾ�</th>
		<th width="10%">����</th>
	</tr>	
	<c:set var="cartTotalPrice" value="0"/>
	<c:set var="cartTotalPoint" value="0"/>
	<c:if test="${empty cart}">
		<tr>
			<td colspan="6">��ٱ��ϰ� ������ϴ�.</td>
		</tr>	
	</c:if>
		
	<c:forEach var="dto" items="${cart}" varStatus="i">
	<tr>
		<td align="center">${i.count}</td>
		<td align="center">
			<img src="images/${dto.pimage}" width="40" height="40"><br>
			<b>${dto.pname}</b>
		</td>
		<td align="center">
			<form name="f" method="post" action="/shopping/cartEdit">
				<br>
				<input type="text" size="3" name="pqty" value="${dto.pqty}">��
				<input type="hidden" name="index" value="${i.count-1}">
				<input type="submit" value="����">
			</form>			
		</td>
		<td align="right">
			<b>${dto.price}��<br>
			[${dto.point}] point</b>
		</td>	
		<td align="right">
			<font color="red">
			<b>${dto.price * dto.pqty}��<br>
			[${dto.point*dto.pqty}] point</b>
			</font>
		</td>
		<td align="center">
			<a href="/shopping/cartDelete?index=${i.count-1}">����</a>	
		</td>
	</tr>
		<c:set var="cartTotalPrice" value="${cartTotalPrice + dto.price *dto.pqty}"/>
		<c:set var="cartTotalPoint" value="${cartTotalPoint + dto.point *dto.pqty}"/>
	</c:forEach>
	<tr class="m1">
		<td colspan="4"><b>��ٱ��� �Ѿ�</b> : 
			<font color="red"><c:out value="${cartTotalPrice}"/>��<br></font>
			<font color="green">�� ���� ����Ʈ : [<c:out value="${cartTotalPoint}"/>] point</font>	
		</td>
		<td colspan="2">
			<a href="#">[�ֹ��ϱ�]</a>
			<a href="/shopping/mall">[��Ӽ���]</a>
		</td>
	</tr>			
</table>	
<%@ include file="mall_bottom.jsp"%>










