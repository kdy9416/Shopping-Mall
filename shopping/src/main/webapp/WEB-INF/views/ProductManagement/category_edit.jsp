<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cate_edit.jsp -->
<html>
<head>
<title>ī�װ�����</title>
</head>
<body>
<div align="center">
<form name="f" action="cate_edit.do" method="post">
	<input type="hidden" name="cnum" value="${getCategory.cnum}"/>
	<table border="1" width="400" height="150">
		<caption valign="top"><h2>ī�װ����</h2></caption>
		<tr>
			<th bgcolor="yellow">ī�װ��ڵ�</th>
			<td><input type="text" name="code" readOnly value="${getCategory.code}"></td>
		</tr>
		<tr>
			<th bgcolor="yellow">ī�װ��̸�</th>
			<td><input type="text" name="cname" value="${getCategory.cname}"></td>
		</tr>
		<tr bgcolor="orange">
			<td colspan="2" align="center">
				<input type="submit" value="����">
				<input type="reset" value="���">
			</td>
		</tr>
	</table>	
</form>
</div>
</body>
</html>