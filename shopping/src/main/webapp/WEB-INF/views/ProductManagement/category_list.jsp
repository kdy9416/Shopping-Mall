<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- cate_list.jsp -->
<html>
<head>
	<title>ī�װ����</title>
	<script type="text/javascript"> 
	function checkDel(cnum){
		var isDel = window.confirm("������ �����Ͻðڽ��ϱ�?");
		if (isDel){
			location.href="cate_delete.do?cnum="+cnum;
		} 
	}
</script>
</head>
<body>
<div align="center">
	<table border="1" width="500">
		<caption valign="top"><h2>ī�װ� ���</h2></caption>
		<tr bgcolor="yellow">
			<th>��ȣ</th>
			<th>ī�װ��ڵ�</th>
			<th>ī�װ��̸�</th>
			<th>����|����</th>
		</tr> 
		
		<c:if test="${empty listCategory}">
		<tr>
			<td colspan="6">��ϵ� ī�װ��� �����ϴ�.</td>
		</tr>		
	</c:if>		
	<c:forEach var="dto" items="${listCategory}">
		<tr>
			<td>${dto.cnum}</td>
			<td>${dto.code}</td>
			<td>${dto.cname}</td>
			<td>
				<a href="category_edit?cnum=${dto.cnum}">����</a> | 
				<a href="javascript:checkDel('${dto.cnum}')">����</a>
			</td>
		</tr>		
	</c:forEach>
	</table>
</div>
</body>
</html>
