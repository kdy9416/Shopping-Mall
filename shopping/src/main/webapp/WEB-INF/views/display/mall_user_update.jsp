<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
		
		function check(){
			if (f.name.value==""){
				alert("수정할 이름을 입력해 주세요")
				f.name.focus()
				return false
			}
			if (f.age.value==""){
				alert("수정할 나이를 입력해 주세요")
				f.age.focus()
				return false
			}
			
			if (f.tel.value==""){
				alert("수정할 전화번호를 입력해 주세요")
				f.tel.focus()
				return false
			}
			
			return true
		}
	</script>
<%@ include file="mall_top.jsp"%>
<div class="col-lg-9">
	<div align="center">
		<h2>회원 수정</h2>
		<form name="f" action="/shopping/update" method="post" onsubmit="return check()">
			아이디 : <input type="text" name="id" value="${login.id}" readonly> <br>
			이름 : <input type="text" name="name"><br>
			나이 : <input type="number" name="age"><br>
			전화번호 : <input type="tel" name="tel" value="${login.tel}" readonly><br>
			<input type="submit" class="btn btn-outline-primary" value="수정하기">
		</form>
	</div>
</div>
</div>
</div>
</div>
</section>
<%@ include file="mall_bottom.jsp"%>