<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>aa</title>
</head>
<!-- ${pageContext.request.contextPath} -->
<body>
 <a href="${pageContext.request.contextPath}/user/test">跳转</a>  
 <!-- <a href="index1.do">tiaozhuan</a>  -->
<%response.sendRedirect("index1.html"); %>
</body>
</html>  --%>
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
							
							<%if(session.getAttribute("Name") == null){ %>
							Follow us <a href="${pageContext.request.contextPath}/user/log.do">登录</a> <a
									href="${pageContext.request.contextPath}/user/reg.do">注册</a>
        					<%}else{ %>
        					<strong> welcome,${Name}! </strong>
        					<a href="${pageContext.request.contextPath}/user/outLogin.do">注销</a>
<%-- 							<%response.sendRedirect("log.do"); %>--%>	
 						<%} %>
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
									<a href=""><img src="assets/images/zhu_logo.png" alt="" />
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
							<li class=""><a href="./index.html">首页</a></li>
							<li><a href="#">产品中心</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="${pageContext.request.contextPath}/skip/lcy_test.do">测试—产品展示1</a>
									</li>
									<li class="menu-item"><a href="">产品展示1</a>
									</li>
									<li class="menu-item"><a href="html/product2.html">产品展示2</a>
									</li>
									<li class="menu-item"><a href="html/product3.html">产品展示3</a>
									</li>
								</ul> <!-- sub-menu end-->
							</li>
							<li><a href="html/about.html">关于我们</a></li>
						</ul>
					</div>
				</div>
				<!--nav end-->
			</div>
		</div>

		<!--===========layout-container================-->
		<div class="layout-container">
			<div class="index-page">
				<div data-am-widget="tabs" class="am-tabs am-tabs-default">
					<div class="am-tabs-bd">
						<div data-tab-panel-0 class="am-tab-panel am-active">
							<div class="index-banner">
								<div class="index-mask">
									<div class="container">
										<div class="am-g">
											<div class="am-u-md-10 am-u-sm-centered">
												<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
												<p class="slide_simple--text am-text-left">
													全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
												</p>
												<div class="slide_simple--buttons">
													<button type="button" class="am-btn am-btn-danger">了解更多</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div data-tab-panel-1 class="am-tab-panel ">
							<div class="index-banner">
								<div class="index-mask">
									<div class="container">
										<div class="am-g">
											<div class="am-u-md-10 am-u-sm-centered">
												<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
												<p class="slide_simple--text am-text-left">
													全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
												</p>
												<div class="slide_simple--buttons">
													<button type="button" class="am-btn am-btn-danger">了解更多</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div data-tab-panel-2 class="am-tab-panel ">
							<div class="index-banner">
								<div class="index-mask">
									<div class="container">
										<div class="am-g">
											<div class="am-u-md-10 am-u-sm-centered">
												<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
												<p class="slide_simple--text am-text-left">
													全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
												</p>
												<div class="slide_simple--buttons">
													<button type="button" class="am-btn am-btn-danger">了解更多</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div data-tab-panel-3 class="am-tab-panel ">
							<div class="index-banner">
								<div class="index-mask">
									<div class="container">
										<div class="am-g">
											<div class="am-u-md-10 am-u-sm-centered">
												<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
												<p class="slide_simple--text am-text-left">
													全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
												</p>
												<div class="slide_simple--buttons">
													<button type="button" class="am-btn am-btn-danger">了解更多</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<ul class="am-tabs-nav am-cf index-tab">
						<li class="am-active"><a href="[data-tab-panel-0] am-g">
								<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
									<i class="am-icon-cog"></i>
								</div>
								<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
									<strong class="promo_slider_nav--item_title">办公移动化</strong>
									<p class="promo_slider_nav--item_description">Enterplorer
										企业浏览器</p>
								</div> </a>
						</li>
						<li class="a"><a href="[data-tab-panel-1] am-g">
								<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
									<i class="am-icon-lightbulb-o"></i>
								</div>
								<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
									<strong class="promo_slider_nav--item_title">网站移动化</strong>
									<p class="promo_slider_nav--item_description">Xcloud 网站跨屏云</p>
								</div> </a>
						</li>
						<li class=""><a href="[data-tab-panel-2] am-g">
								<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
									<i class="am-icon-line-chart"></i>
								</div>
								<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
									<strong class="promo_slider_nav--item_title">HTML5移动开发</strong>
									<p class="promo_slider_nav--item_description">Amaze UI
										前端开发框架</p>
								</div> </a>
						</li>
						<li class=""><a href="[data-tab-panel-3] am-g">
								<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
									<i class="am-icon-hourglass-end"></i>
								</div>
								<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
									<strong class="promo_slider_nav--item_title">How We
										Work</strong>
									<p class="promo_slider_nav--item_description">Lorem ipsum
										asmo dolor</p>
								</div> </a>
						</li>
					</ul>
				</div>
			</div>
		</div>


	<div class="section">
		<div class="container">
			<div class="section--header">
				<h2 class="section--title">核心优势</h2>
				<p class="section--description">
					全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立 <br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
				</p>
			</div>

			<!--index-container start-->
			<div class="index-container">
				<div class="am-g">
					<div class="am-u-md-3">
						<div class="features_item">
							<img src="assets/images/index/f01.jpg" alt="">
							<h3 class="features_item--title">简单的适配过程</h3>
							<p class="features_item--text">
								用户可快速学习适配开发，通过丰富的组件库完成页面功能的移动化适配。</p>
						</div>
					</div>
					<div class="am-u-md-3">
						<div class="features_item">
							<img src="assets/images/index/f02.jpg" alt="">
							<h3 class="features_item--title">丰富移动组件库</h3>
							<p class="features_item--text">Enterplorer
								Studio内置丰富的移动组件，大大提升了开发效率。</p>
						</div>
					</div>
					<div class="am-u-md-3">
						<div class="features_item">
							<img src="assets/images/index/f03.jpg" alt="">
							<h3 class="features_item--title">可视化界面设计</h3>
							<p class="features_item--text">整个适配过程可视化，集成手机模拟器，可以快速的开发调试。
						</div>
					</div>
					<div class="am-u-md-3">
						<div class="features_item">
							<img src="assets/images/index/f04.jpg" alt="">
							<h3 class="features_item--title">零秒部署</h3>
							<p class="features_item--text">无需部署，实时上传实时呈现，复用现有系统流程及数据</p>
						</div>
					</div>
				</div>

				<div class="index-more">
					<button type="button" class="am-btn am-btn-secondary">MORE&nbsp;&nbsp;》</button>
				</div>
			</div>
			<!--index-container end-->
		</div>
	</div>

	</div>

	<!--promo_detailed start-->
	<div class="promo_detailed">
		<div class="promo_detailed-container">
			<div class="container">
				<div class="am-g">
					<div class="am-u-md-6">
						<ul class="promo_detailed--list">
							<li class="promo_detailed--list_item"><span
								class="promo_detailed--list_item_icon"> <i
									class="am-icon-diamond"></i> </span>
								<dl>
									<dt>多层次的用户管理功能</dt>
									<dd>支持用户的添加和导入，与AD可以进行紧密的整合，实时同步最新的用户信息，从而方便对用户进行管理。</dd>
								</dl>
							</li>
							<li class="promo_detailed--list_item"><span
								class="promo_detailed--list_item_icon"> <i
									class="am-icon-dollar" style="margin-left: 15px;"></i> </span>
								<dl>
									<dt>丰富的日志报表系统</dt>
									<dd>提供实时监控平台，日志和报告系统，帮助管理员对系统的整体情况有全面的了解。</dd>
								</dl>
							</li>
							<li class="promo_detailed--list_item"><span
								class="promo_detailed--list_item_icon"> <i
									class="am-icon-bank" style="margin-left: 10px;"></i> </span>
								<dl>
									<dt>丰富的应用程序管理</dt>
									<dd>支持在线应用、适配应用、本地应用等多种应用类型。使用户可以最便捷的获取企业的各种应用。</dd>
								</dl>
							</li>
						</ul>
					</div>

					<div class="am-u-md-6">
						<div class="promo_detailed--cta">
							<div class="promo_detailed--cta_wrap">
								<div class="promo_detailed--cta_text">
									提供设备的远程锁定，擦除等功能。在设备出现遗失的情况下可以最大程度的保护企业的信息不被泄露。</div>
								<div class="promo_detailed--cta_footer">
									<button type="button" class="am-btn am-btn-danger">MORE&nbsp;&nbsp;》</button>
								</div>
							</div>
							<div class="promo_detailed-img am-show-sm-only"
								style="background-image: url('assets/images/index/promo_detailed_bg.jpg');"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="promo_detailed-img am-hide-sm-only"
			style="background-image: url('assets/images/index/promo_detailed_bg.jpg');"></div>
	</div>
	<!--promo_detailed end-->

	<div class="section" style="border-bottom: 1px solid #e9e9e9;">
		<div class="container">
			<div class="section--header">
				<h2 class="section--title">我们的服务</h2>
				<p class="section--description">
					全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立 <br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
				</p>
			</div>

			<!--index-container start-->
			<div class="index-container">
				<div class="am-g">
					<div class="am-u-md-3">
						<div class="service_item">
							<i class="service_item--icon am-icon-diamond"></i>
							<h3 class="service_item--title">多页面工作</h3>
							<div class="service_item--text">
								<p>标签栏可切换，不必为了新内容而被迫跳转界面，多项工作内容并行处理</p>
							</div>
							<footer class="service_item--footer">
								<a href="#" class="link -blue_light">Learn More》</a>
							</footer>
						</div>
					</div>

					<div class="am-u-md-3">
						<div class="service_item">
							<i class="service_item--icon am-icon-user"></i>
							<h3 class="service_item--title">统一入口</h3>
							<div class="service_item--text">
								<p>集成企业内网所有资源，OA、CRM、ERP、邮件系统，单点登录，无需重复输入密码</p>
							</div>
							<footer class="service_item--footer">
								<a href="#" class="link -blue_light">Learn More》</a>
							</footer>
						</div>
					</div>

					<div class="am-u-md-3">
						<div class="service_item">
							<i class="service_item--icon am-icon-umbrella"></i>
							<h3 class="service_item--title">一键直达</h3>
							<div class="service_item--text">
								<p>办公流程太多，搜索框输入（或语音输入），可以快速找到核心内容</p>
							</div>
							<footer class="service_item--footer">
								<a href="#" class="link -blue_light">Learn More》</a>
							</footer>
						</div>
					</div>

					<div class="am-u-md-3">
						<div class="service_item">
							<i class="service_item--icon am-icon-briefcase"></i>
							<h3 class="service_item--title">语音助手</h3>
							<div class="service_item--text">
								<p>不方便打字时，可以直接用语音输入想要的内容，使您的双手得到解放</p>
							</div>
							<footer class="service_item--footer">
								<a href="#" class="link -blue_light">Learn More》</a>
							</footer>
						</div>
					</div>
				</div>
			</div>
			<!--index-container end-->
		</div>
	</div>


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
											class="am-icon-clock-o"></i><span>Monday - Friday, 9am
												- 6 pm; </span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=path %>assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="<%=path %>assets/js/amazeui.js" charset="utf-8"></script>
	<script src="<%=path %>assets/js/common.js" charset="utf-8"></script>
</body>

</html>
