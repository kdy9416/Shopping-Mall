<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
		
		function check(){
			if (f.id.value==""){
				alert("아이디를 입력해 주세요")
				f.id.focus()
				return false
			}
			if (f.password.value==""){
				alert("비밀번호를 입력해 주세요")
				f.content.focus()
				return false
			}
			
			return true
		}
	</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ include file="mall_top.jsp"%>
	<div class="col-lg-9">
	<div align="center">
		<div id="loginBoxTitle">Login</div>
		<form name="f" action="/shopping/login" method="post"  onsubmit="return check()">

			<c:if test="${empty cookie.saveId.value}">
				<input type="text" name="id" placeholder="아이디"/><br>
			</c:if>
			<c:if test="${!empty cookie.saveId.value}">
				 <input type="text" name="id" value="${cookie.saveId.value}"/><br>
			</c:if>


			  <input type="password" name="password" placeholder="비밀번호"/><br>

		   아이디 기억하기<input type="checkbox" name="saveId"><br><br>
			<input type="submit" class="btn btn-outline-primary btn-sm" value="로그인"/>
			<button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='/shopping/loginSign'">회원가입</button>
			<button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='/shopping/searchId'">아이디 찾기</button>
			<button type="button" class="btn btn-outline-primary btn-sm" onclick="location.href='/shopping/searchPw'">비밀번호 변경</button>
		</form>

	</div>

	</div>
	</div>
	</div>
	</section>


<%@ include file="mall_bottom.jsp"%>

<style type="text/css">

	#loginBoxTitle {
		color:#000000;
		font-weight: bold;
		font-size: 32px;
		text-transform: uppercase;
		padding: 5px;
		margin-bottom: 20px;
		background: linear-gradient(to right, #270a09, #8ca6ce);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
	}
	#inputBox {
		margin: 10px;
	}

	#inputBox button {
		padding: 3px 5px;
	}
</style>