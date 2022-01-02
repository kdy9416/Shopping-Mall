<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!-- list.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>게시판</title>
</head>
<body>
<div align="center">
	<b>글목록</b>
	<table border="0" width="800">
		<tr bgcolor="yellow">
			<td align="right"><a href="/shopping/board/write">글쓰기</a></td>
		</tr>
	</table>
	<table border="1" width="800">
		<tr bgcolor="green">
			<th>번호</th>
			<th width="30%">제목</th>
			<th>작성자</th>
			<th>조회</th>
		</tr>

	<c:if test="${empty listBoard}">

		<tr>
			<td colspan="6">등록된 게시글이 없습니다.</td>
		</tr>		
	</c:if>		
	<c:forEach var="dto" items="${listBoard}">
		<tr>
			<td>${dto.num}</td>
			<td>
				<a href="/shopping/board/content?num=${dto.num}">
					${dto.subject}
				</a>
			</td>
			<td>${dto.writer}</td>
			<td>${dto.readcount}</td>
		
		</tr>		
	</c:forEach>
	</table>
</div>
</body>
</html>
