 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	/* String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/"; */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <%-- <base href="<%=basePath%>">  --%>
<title>实验室项目展示</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="<%=path %>/assets/css/amazeui.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/common.min.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/cjl/cjl_product.min.css" />
<link rel="stylesheet" href="<%=path %>/assets//css/index.min.css" />

<script src="http://libs.baidu.com/jquery/1.6.4/jquery.min.js"></script> 
<script type="text/javascript" src="<%=path %>/assets/js/cjl/jquery.webcam.min.js"></script>    
<script type="text/javascript" src="<%=path %>/assets/js/cjl/webcam2.js"></script>
</head>
<body>
<body>
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
											class="am-btn am-btn-secondary am-radius">联系我们</button>
									</a>
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
							<li class=""><a href="./index.html">首页</a></li>
							<li><a href="#">产品中心</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="html/product1.html">产品展示1</a>
									</li>
									<li class="menu-item"><a href="html/product2.html">产品展示2</a>
									</li>
									<li class="menu-item"><a href="html/product3.html">产品展示3</a>
									</li>
								</ul> <!-- sub-menu end--></li>
							<li><a href="html/about.html">关于我们</a></li>
						</ul>
					</div>
				</div>
				<!--nav end-->
			</div>
		</div>
		
		<!--product1-page start-->	
		<div id="webcam"></div>
		<div class="product1-login">
			<input type="button" value="拍照" class="am-btn am-btn-secondary am-round" onclick="savePhoto()" />
		</div>
		
		<div id="photos">
		<img src="" id="img">
		</div>
		<div class="product1-login">
			<input type="button" value="删除" class="am-btn am-btn-secondary am-round" onclick="delPhoto()" />
		</div>
		<!--product1-page end-->
	
		<div class="layout-footer">
			<div class="footer">
				<div style="background-color: #383d61" class="footer--bg"></div>
				<div class="footer--inner">
					<div class="container">
						<div class="footer_main">
							<div class="am-g">
								<div class="am-u-md-3 ">
									<div class="footer_main--column">
										<strong class="footer_main--column_title">关于我们</strong>
										<div class="footer_about">
											<p class="footer_about--text">
												本实验室为由中国石油大学（北京）信息科学与工程学院计算机系朱老师项目组，该网站用于科研项目的展示和实际测试。</p>
											<p class="footer_about--text">
												研究领域为计算机视觉，目前主要为车辆和行人的检测识别研究。</p>
										</div>
									</div>
								</div>

								<div class="am-u-md-3 ">
									<div class="footer_main--column">
										<strong class="footer_main--column_title">联系详情</strong>
										<ul class="footer_contact_info">
											<li class="footer_contact_info--item"><i
												class="am-icon-phone"></i><span>服务专线：17600066710</span></li>
											<li class="footer_contact_info--item"><i
												class="am-icon-envelope-o"></i><span>lcylmhlcy@163.com</span>
											</li>
											<li class="footer_contact_info--item"><i
												class="am-icon-map-marker"></i><span>北京市昌平区府学路18号中国石油大学（北京）</span>
											</li>
											<li class="footer_contact_info--item"><i
												class="am-icon-clock-o"></i><span>Monday - Friday,
													9am - 6 pm; </span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>