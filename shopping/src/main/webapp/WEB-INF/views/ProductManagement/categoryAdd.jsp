<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- cate_input.jsp -->
<html>
<head>
<title>ī�װ����</title>
</head>
<body>
<div align="center">
<form action="/shopping/categoryAdd2" method="post">
	<table border="1" width="400" height="150">
		<caption valign="top"><h2>ī�װ����</h2></caption>
		<tr>
			<th bgcolor="yellow">ī�װ��ڵ�</th>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<th bgcolor="yellow">ī�װ��̸�</th>
			<td><input type="text" name="cname"></td>
		</tr>
		<tr bgcolor="orange">
			<td colspan="2" align="center">
				<input type="submit" value="���">
				<input type="reset" value="���">
			</td>
		</tr>
	</table>	
</form>
</div>
</body>
</html>