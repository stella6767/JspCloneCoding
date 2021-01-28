<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>


<div class="main">


	<!-- Sign up form -->
	<section class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h2 class="form-title">회원정보</h2>
					<form method="POST" class="register-form"  action="/mangoplate/user?cmd=update" >
						<div class="form-group d-flex">
							<label for="name"> <i class="material-icons">person</i></label> <input type="text" name="username" placeholder="${sessionScope.principal.username}" value="${sessionScope.principal.username}" />

						</div>
						<div class="form-group">
							<label for="email"><i class="material-icons">email</i></label> <input type="email" name="email" placeholder="${sessionScope.principal.email}" value="${sessionScope.principal.email}" />
						</div>
						<div class="form-group">
							<label for="pass"><i class="material-icons">lock</i></label> <input type="password" name="password" placeholder="${sessionScope.principal.password}" value="${sessionScope.principal.password}" />
						</div>

						<div class="form-group">
							<label for="agree-term" class="label-agree-term">권한 : ${sessionScope.principal.userRole}</label>
						</div>

						<div class="form-group form-button">
							<button type="submit" name="signup"  class="form-submit border-0">정보 수정하기</button>
						</div>
					</form>
				</div>
				<div class="signup-image">
					<figure>
						<img src="<%=request.getContextPath()%>/images/welcome.jpg" alt="sing up image">
					</figure>
					<div class="text-center">
						<form action="user?cmd=delete" method="post" >
							<input type="hidden" name="id" value="${sessionScope.principal.id}" />
							<button type="button" class="btn btn-outline-danger">계정을 삭제하시겠습니까?</button>
						</form>

					</div>
					<form action="board?cmd=mainList" method="post" >
					<div class="text-center mt-2">
						<button type="submit" name="signup" class="form-submit border-0">빠져나오기</button>
					</div>
					</form>

				</div>
			</div>
		</div>
	</section>

</div>



</body>
</html>