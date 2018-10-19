<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/regist.do" modelAttrit="user">
		<table border="1">
			<tr>
				<td>用户名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password"></td>
			</tr>
			<!-- <tr>
				<td>年龄</td>
				<td><input type="text" name="age"></td>
			</tr> -->
			<tr>
				<td><input type="submit" value="注册"></td>
			</tr>
		</table>
	</form>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>实验室项目展示</title>
<link rel="stylesheet" href="<%=path %>/assets/css/amazeui.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/common.min.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/other.min.css" />
</head>
<body class="register-container">
	<div class="layout">
		<!--===========layout-header================-->
		<div class="layout-header am-hide-sm-only">
			<!--topbar start-->
			<div class="topbar">
				<div class="container">
					<div class="am-g">
						<div class="am-u-md-3">
							<div class="topbar-left">
								<i class="am-icon-globe"></i>
								<div class="am-dropdown" data-am-dropdown>
									<button class="am-btn am-btn-primary am-dropdown-toggle"
										data-am-dropdown-toggle>
										Language <span class="am-icon-caret-down"></span>
									</button>
									<ul class="am-dropdown-content">
										<li><a href="#">English</a></li>
										<li class="am-divider"></li>
										<li><a href="#">Chinese</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="am-u-md-9">
							<div class="topbar-right am-text-right am-fr">
								Follow us <a href="./login.html">登录</a> <a
									href="./register.html">注册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--topbar end-->

			<div class="header-box" data-am-sticky>
				<!--header start-->
				<div class="container">
					<div class="header">
						<div class="am-g">
							<div class="am-u-lg-2 am-u-sm-12">
								<div class="logo">
									<a href=""><img src="../assets/images/zhu_logo.png" alt="" />
									</a>
								</div>
							</div>
							<div class="am-u-md-10">
								<div class="header-right am-fr">
									<div class="header-contact">
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6" class="contact-icon am-icon-phone"></i>
												<strong>+86-17600066170</strong> <span>周一~周五, 8:00 -
													20:00</span>
											</div>
										</div>
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6"
													class="contact-icon am-icon-envelope-o"></i> <strong>lcylmhlcy@163.com</strong>
												<span>随时欢迎您的来信！</span>
											</div>
										</div>
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6"
													class="contact-icon am-icon-map-marker"></i> <strong>人工智能实验室</strong>
												<span>北京市昌平区中国石油大学（北京）</span>
											</div>
										</div>
									</div>
									<a href="html/contact.html" class="contact-btn">
										<button type="button"
											class="am-btn am-btn-secondary am-radius">联系我们</button> </a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--header end-->


				<!--nav start-->
				<div class="nav-contain">
					<div class="nav-inner">
						<ul class="am-nav am-nav-pills am-nav-justify">
							<li class=""><a href="./index.html">首页</a>
							</li>
							<li><a href="#">产品中心</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="html/product1.html">产品展示1</a>
									</li>
									<li class="menu-item"><a href="html/product2.html">产品展示2</a>
									</li>
									<li class="menu-item"><a href="html/product3.html">产品展示3</a>
									</li>
								</ul> <!-- sub-menu end--></li>
							<li><a href="html/about.html">关于我们</a>
							</li>
						</ul>
					</div>
				</div>
				<!--nav end-->
			</div>
		</div>


		<!--===========layout-container================-->
		<div class="register-box">
			<form action="${pageContext.request.contextPath }/user/regist.do" class="am-form" data-am-validator>
				<fieldset>
					<legend>
						注册用户
						<p class="register-info">账号可以使用手机或者邮箱注册，但是仔细核对后，填入正确信息。</p>
					</legend>

					<div class="am-form-group">
						<div class="am-g">
							<div class="am-u-md-2 am-padding-0 am-text-right">
								<label for="doc-vld-name-2" class="register-name">账号</label>
							</div>
							<div class="am-u-md-10">
								<input type="text" id="doc-vld-name-2" name="name" minlength="3"
									placeholder="输入用户名（至少 3 个字符）" required />
							</div>
						</div>
					</div>

					<div class="am-form-group">
						<div class="am-g">
							<div class="am-u-md-2 am-padding-0 am-text-right">
								<label for="doc-vld-pwd-1" class="register-pwd">密码</label>
							</div>
							<div class="am-u-md-10">
								<input type="password" id="doc-vld-pwd-1" name="password"
									placeholder="6 位数字的账号密码" pattern="^\d{6}$" required />
							</div>
						</div>
					</div>

					<!-- <div class="am-form-group">
						<div class="am-g">
							<div class="am-u-md-2 am-padding-0 am-text-right">
								<label for="doc-vld-pwd-2">确认密码</label>
							</div>
							<div class="am-u-md-10">
								<input type="password" id="doc-vld-pwd-2"
									placeholder="请与上面输入的值一致" data-equal-to="#doc-vld-pwd-1"
									required />
							</div>
						</div>
					</div> -->

					<div class="am-g">
						<div class="am-u-md-10">
							<button class="am-btn am-btn-secondary" type="submit">注册</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>

	</div>




	<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>