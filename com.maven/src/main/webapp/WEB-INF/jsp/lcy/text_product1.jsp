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
<link rel="stylesheet" href="<%=path %>/assets/css/lcy/lcy_product.min.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/index.min.css" />
</head>
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
		<div class="product1-login">
			<div
				style="background: url(../assets/images/product/product1-banner.jpg) no-repeat left top;">
				<p style="font-size: 20px; color: #ffffff;">
					</br>
					</br>行人重识别（Person
					re-identification）也称行人再识别，是利用计算机视觉技术判断图像或者视频序列中是否存在特定行人的技术,广泛被认为是一个图像检索的子问题。</br>给定一个监控行人图像，检索跨设备下的该行人图像。旨在弥补目前固定的摄像头的视觉局限，并可与行人检测/行人跟踪技术相结合，</br>可广泛应用于智能视频监控、智能安保等领域。
				</p>
				<p style="font-size: 20px; color: #ffffff;">
					由于不同摄像设备之间的差异，同时行人兼具刚性和柔性的特性 ，外观易受穿着、尺度、遮挡、姿态和视角等影响，</br>使得行人重识别成为计算机视觉领域中一个既具有研究价值同时又极具挑战性的热门课题。</br>
					</br>
				</p>
			</div>
		</div>

		<div align="center">
			<img src="<%=path %>/assets/images/lcy/reid2.jpg" alt="some_text">
		</div>
		<div class="product1-login">
<%-- 			<button type="button" class="am-btn am-btn-secondary am-round" href="${pageContext.request.contextPath}/skip/lcy_image.do">上传多张图片</button>--%>			
			<a class="am-btn am-btn-secondary am-round" href="${pageContext.request.contextPath}/skip/lcy_image.do">上传多张图片</a>
			<input type="button" value="选取一张图片" class="am-btn am-btn-secondary am-round">
		</div>
		<div class="product1-login">
			<button type="button" class="am-btn am-btn-secondary am-round">行人重识别</button>
			<p>输入图片数大于11张，只罗列出按相似度排名的前10张图片。</p>
		</div>
		<!--product1-page end-->





		<!--===========layout-footer================-->
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
	<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>