<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="mall_top.jsp"%>
<script type="text/javascript">
	function goCart(){
		document.f.action="/shopping/cartAdd"
		document.f.submit()
	}
</script>
<table width="99%" border="0" class="outline">
	<tr class="m1">
		<td colspan="2" align="center">
			<b>[${getProduct.pname}] ��ǰ ����</b>
		</td>
	</tr>
	<tr>
		<td align="center" class="m3">
			<img src="images/${getProduct.pimage}" width="200" height="200">
		</td>
		<td class="m3">
			<form name="f" method="post">
				��ǰ��ȣ : ${getProduct.pnum}<br>
				��ǰ�̸� : ${getProduct.pname}<br>
				��ǰ���� : <font color="red">${getProduct.price}</font>��<br>
				��ǰ����Ʈ : <font color="red">[${getProduct.point}]</font>point<br>
				��ǰ���� : <input type="text" name="qty" size="3" value="1">��<br><br>
				<input type="hidden" name="pnum" value="${getProduct.pnum}">
				<input type="hidden" name="code" value="${param.code}">
				<a href="javascript:goCart()">��ٱ���</a>
				<a href="javascript:goOrder()">��ñ���</a>
			</form>	
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="left">
			<b>��ǰ �� ����</b><br>
			${getProduct.pcontent}
		</td>
	</tr>		
</table>
<%@ include file="mall_bottom.jsp"%>