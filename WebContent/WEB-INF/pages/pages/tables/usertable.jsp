<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../../../WEB-INF/jspinclude/domain.jsp"
	flush="true" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | jsGrid</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="${domain}/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jsGrid -->
<link rel="stylesheet" href="${domain}/plugins/jsgrid/jsgrid.min.css">
<link rel="stylesheet"
	href="${domain}/plugins/jsgrid/jsgrid-theme.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${domain}/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link
	href="${domain}/plugins/bootstrapValidator/css/bootstrapValidator.min.css"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="${domain}/index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="${domain}/dist/img/user1-128x128.jpg"
									alt="User Avatar" class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="${domain}/dist/img/user8-128x128.jpg"
									alt="User Avatar" class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="${domain}/dist/img/user3-128x128.jpg"
									alt="User Avatar" class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"> <i
						class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="${domain }/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="${domain }/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Admin</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Dashboard <i class="right fas fa-angle-left"></i>
								</p>
						</a></li>
						<!-- form -->
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-table"></i>
								<p>
									Tables <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="UserManage/usertable.do"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>User Table</p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon fas fa-th"></i>
								<p>
									Simple Link <span class="right badge badge-danger">New</span>
								</p>
						</a></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>UserTable</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="logout.do">logout</a></li>
								<li class="breadcrumb-item active">UserTable</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">UserTable</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table class="table table-bordered table-hover ">
							<tr>
								<td>id</td>
								<td>account</td>
								<td>password</td>
								<td><button type="button" class="btn btn-success"
										id="add_btn">Add</button></td>
							</tr>
							<c:forEach items="${userlist }" var="user">
								<tr>
									<td>${user.id }</td>
									<td>${user.account }</td>
									<td>${user.password }</td>
									<td><button class="btn btn-default del_btn"
											cname="${user.account }">Delete</button>
										<button class="btn btn-default  update_btn"
											cname="${user.id }">Update</button></td>
								</tr>
							</c:forEach>
						</table>
						<div></div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</section>
			<!-- /.content -->


			<!-- 添加用户的模态框 -->
			<div class="modal fade" tabindex="-1" role="dialog" id="addUserModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Add User</h4>
						</div>
						<div class="modal-body">
							<form id="add_form" action="UserManage/addUser.do" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Account</label> 
									<input type="text" class="form-control" id="add_account"
										name="account" placeholder="Account">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label>
									 <input
										type="password" class="form-control" id="add_pwd"
										placeholder="Password" name="password">
								
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="add_submit">Add
							</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->


			<!-- 修改用户的模态框 -->
			<div class="modal fade" tabindex="-1" role="dialog"
				id="updateUserModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Update User</h4>
						</div>
						<div class="modal-body">
							<form id="update_form" action="UserManage/updateUser.do"
								method="post" >
								<div class="form-group">
									<label for="exampleInputEmail1">Account</label> <input
										type="text" class="form-control" id="update_account"
										name="account" placeholder="Account">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" class="form-control" id="update_pwd"
										placeholder="Password" name="password">
								</div>
								<input type="hidden" id="update_id" name="id">
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="update_submit">Update
							</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->


			<!-- 用于警告消息的模态框 -->
			<div id="msg_modal" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Message</h4>
						</div>
						<div class="modal-body">
							<p id="msg_word"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" id="ok_btn">OK</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>

						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.0.2
			</div>
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="${domain}/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="${domain}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${domain}/plugins/bootstrapValidator/js/bootstrapValidator.min.js"></script>

	<!-- jsGrid -->
	<script src="${domain}/plugins/jsgrid/demos/db.js"></script>
	<script src="${domain}/plugins/jsgrid/jsgrid.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${domain}/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${domain}/dist/js/demo.js"></script>
	<!-- page script -->
	<script>
		$(function() {
			/* $("#jsGrid1").jsGrid({
				  height: "60%",
			      width: "100%",
			      sorting: true,
			      paging: true,
			      pageSize: 10,
			      autoload:true,
			      controller: {
			        loadData: function() {
			        	
			        	var a;
			        $.ajax({
			        		async: false,
			                type: "get",
			                url: "UserManage/getAllUser.do",
			              	success: function(data){
			              		a = data;
			                },
			                dataType:"json"
			            });
			         return a;
			        
			    },
			      },
			    fields: [
			    	{ name: "id", type: "number", width: 50},
			        { name: "account", type: "text", width: 150 },
			        { name: "password", type: "text", width: 50 },
			        { name: "status", type: "numer", width: 200 }
			    ]
			}); */

			$("#add_btn").click(function() {
								$("#addUserModal").modal();
								$('#add_form').bootstrapValidator(
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
								
		
															
	
		                                    $("#add_submit").click(function() {
		                                    		$("#add_form").data('bootstrapValidator').validate();
		                                    		if(!$("#add_form").data('bootstrapValidator').isValid()){
		                                    			return;
		                                    		}
			                                        $.ajax({
			                                        	async : false,
														url : 'UserManage/checkUser.do?account='+ $("#add_account").val(),
														success : function(data) {
															if (data.account == null) {
																document.getElementById("add_form").submit();
															} else {
																alert("The account is already existed");
															}
														}
													});

												});

							});
			$(".del_btn").click(function() {
				var account = $(this).attr("cname");
				$("#msg_word").text("Are you sure to delete it?")
				$("#msg_modal").modal();
				$("#ok_btn").click(function() {
					$.ajax({
						async : false,
						url : 'UserManage/delUser.do?account='+account,
						success : function(data) {
							window.location.reload();
						}
					});
				});
			});

			$(".update_btn")
					.click(
							function() {
								var account;
								var id = $(this).attr("cname");
								$("#updateUserModal").modal();
								$.ajax({
									async : false,
									url : 'UserManage/selUserById.do?id=' + id,
									success : function(user) {
										account = user.account;
										$("#update_account").val(account);
										$("#update_pwd").val(user.password);
										$("#update_id").val(id);
									}
								});
								$('#update_form')
										.bootstrapValidator(
												{
													feedbackIcons : {
														valid : 'glyphicon glyphicon-ok',
														invalid : 'glyphicon glyphicon-remove',
														validating : 'glyphicon glyphicon-refresh'
													},
													
													submitButtons:'#add_submit',
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
								$("#update_submit").click(
									
												function() {
													$("#update_form").data('bootstrapValidator').validate();
			                                		if(!$("#update_form").data('bootstrapValidator').isValid()){
			                                			return;
			                                		}
													   $.ajax({async : false,
															url : 'UserManage/checkUser.do?account='
																	+ $("#update_account").val(),
															success : function(data) {
																if (data.account == null || data.account == account) {
																	document.getElementById("update_form").submit();
																} else {
																	alert("The account is already existed");
																}
															}
														});
												});
							});
		});
	</script>
</body>
</html>
