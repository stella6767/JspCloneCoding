<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">회원가입</h2>
                        <form method="POST" class="register-form" id="register-form" action="/mangoplate/user?cmd=join" onsubmit="return valid()">
                            <div class="form-group d-flex">
                                <label for="name">  <i class="material-icons">person</i></label>
                                <input type="text" name="username" placeholder="Your Name" required/>
                                <button type="button" class="btn btn-info" onClick="usernameCheck()">중복체크</button>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="material-icons">email</i></label>
                                <input type="email" name="email" placeholder="Your Email" required/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="material-icons">lock</i></label>
                                <input type="password" name="password" placeholder="Password" required/>
                            </div>


                            <div class="form-group form-button">
                                <button type="submit" name="signup" id="signup" class="form-submit border-0" >가입완료</button>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="<%=request.getContextPath()%>/images/welcome.jpg" alt="sing up image"></figure>
                        <a href="<%=request.getContextPath()%>/board?cmd=allList" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
        
	</div>   

<script>

var isChecking = false;

function valid(){
	if(isChecking == false){
		alert("아이디 중복체크를 해주세요.");
	}
	return isChecking;
}

function usernameCheck(){
	//DB에서 확인해서 정상이면 isChecking = true;
	 var username = $("#username").val();

		$.ajax({
			type: "POST",
			url: "/mangoplate/user?cmd=usernameCheck",
			data: username,
			contentType: "text/plain; charset=utf-8",
			dataType: "text"  // 응답 받을 데이터의 타입을 적으면 자바스크립트 오브젝트로 파싱해줌.
		}).done(function(data){
			if(data === 'ok'){ // 유저네임 있다는 것
				isChecking = false;
				alert('유저네임이 중복되었습니다.')
			}else{
				isChecking = true;
				alert("해당 유저네임을 사용할 수 있습니다.")
			}
		});
	
}



</script>
	
</body>

</html>     
