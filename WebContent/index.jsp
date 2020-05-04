<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/jspinclude/domain.jsp" flush="true" />
<!DOCTYPE html>
<html lang="en">
	
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BMS</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
        <link href="${domain}/plugins/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet">
			<!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="${domain}/plugins/bootstrapValidator/js/bootstrapValidator.min.js"></script>
		<script type="text/javascript">
		
			$(function(){
				
				//取出页面登陆的错误信息
				if("${param.err}"=="500"){
					$("#msg").text("用户名或密码错误");
					$("#msgmodal").modal();
				}
				//验证码错误信息
				if("${param.err}"=="400"){
					$("#msg").text("验证码错误");
					$("#msgmodal").modal();
				}
				if("${param.msg}"=="100"){
					$("#msg").text("注冊成功");
					$("#msgmodal").modal();
				}
				
				//验证登陆规则
				$("#sub_btn").click(function(){
					var usernameValue = $("#username").val();
					// 验证用户名是否合法,规则如下：必须由字母，数字，下划线组成，并且长度为5到15位。
					var usernameReg = /^\w{5,15}$/;
					// 验证用户信息
					if (!usernameReg.test(usernameValue)) {
						// 提示用户
						$("#msg").text("用户名不合法");
						$("#msgmodal").modal();
						return false;
					}
					
					// 获取密码
					var passwordValue = $("#password").val();
					// 验证密码是否合法,规则如下：必须由字母，数字，下划线组成，并且长度为5到15位。
					var passwordReg = /^\w{5,15}$/;
					// 验证用户信息
					if (!passwordReg.test(passwordValue)) {
						// 提示用户
						$("#msg").text("密码不合法");
						$("#msgmodal").modal();
						return false;
					}
					// 获取验证码信息
					var codeValue = $("#code").val();
					// 验证验证码不为空！
					if (codeValue == "") {
						alert("验证码不能为空！");
					}
			
					// 阻止表单提交
					return true;
					
				});
				//登陆的验证码点击刷新
				$(".codeImg").click(function() {
					var url = "code.jpg?t="+Math.random();
					$(this).prop("src", url);
				});
				$("#regist_btn").click(
						function() {
							$("#registUserModal").modal();
							$('#regist_form').bootstrapValidator(
									{
										feedbackIcons : {
											valid : 'glyphicon glyphicon-ok',
											invalid : 'glyphicon glyphicon-remove',
											validating : 'glyphicon glyphicon-refresh'
										},
										fields : {
											'account' : {
												message : '用户名无效',
												validators : {
													notEmpty : {
														message : '用户名不能为空'
													},
													stringLength : {
														min : 3,
														max : 10,
														message : '用户名长度在3到30之间'
													}
												}
											},
											'password' : {
												validators : {
													notEmpty : {
														message : '密码不能为空'
													},
													stringLength : {
														min : 3,
														max : 10,
														message : '密码长度在3到10之间'
													}
												}
											}
											
										}
									});
					
	                                    $("#regist_submit").click(function() {
	                                    	$("#regist_form").data('bootstrapValidator').validate();
                                    		if(!$("#regist_form").data('bootstrapValidator').isValid()){
                                    			return;
                                    		}
		                                        $.ajax({
		                                        	async : false,
													url : 'UserManage/checkUser.do?account='+ $("#regist_account").val(),
													success : function(data) {
														if (data.account == null) {
															document.getElementById("regist_form").submit();
														} else {
															alert("The account is already existed");
														}
													}
												});

											});
						});
			});
		</script>
		
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>BMS</strong> Login</h1>
                            <div class="description">
                            	<p>
                            		login on it
                            	</p>
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to the system or <button id="regist_btn">sign up</button></h3>
                            		<p>Enter your username and password to log in:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <!--    登陆表单 -->
                            <div class="form-bottom">
                            	
			                    <form role="form" action="login.do" method="post" class="login-form" id="login_form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="account" placeholder="Username..." class="form-username form-control" id="username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="password">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Code</label>
			                        	<input type="text" name="code" placeholder="code"  id="code">
			                        	<img alt="" src="code.jpg"   class="img-responsive codeImg" style="float: right; margin-right: 50px; width:120px;height: 50px ">
			                        </div>
			                        <button type="submit" class="btn" id="sub_btn" data-dismiss="modal">Sign in</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- 提示的模态框 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="msgmodal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">提示</h4>
				</div>
				<div class="modal-body">
					<p id="msg"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<!-- 注册用户的模态框 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="registUserModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Regist User</h4>
						</div>
						<div class="modal-body">
							<form id="regist_form" action="registUser.do" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Account</label> <input
										type="text" class="form-control" id="regist_account"
										name="account" placeholder="Account">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" class="form-control" id="regist_pwd"
										placeholder="Password" name="password">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="regist_submit">Regist
							</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>

        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>