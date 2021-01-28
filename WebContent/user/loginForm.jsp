<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>
    
<div class="main">
 <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="<%=request.getContextPath()%>/images/welcome.jpg" alt="sing up image"></figure>
                        <a href="<%=request.getContextPath()%>/user?cmd=joinForm" class="signup-image-link">계정을 생성하시겠습니까?</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">로그인</h2>
                        <form method="POST" class="register-form" id="login-form" action="/mangoplate/user?cmd=login">
                            <div class="form-group">
                                <label for="your_name"><i class="material-icons">person</i></label>
                                <input type="text" name="username" id="your_name" placeholder="Your Name" requried/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="material-icons">lock</i></label>
                                <input type="password" name="password" id="your_pass" placeholder="Password" requried/>
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>
  </div> 