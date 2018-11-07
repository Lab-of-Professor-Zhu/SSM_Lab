<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>提示信息</title>
<link rel="stylesheet" href="<%=path%>/assets/css/amazeui.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/common.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/other.min.css" />

</head>
<body class="error-container error-dark-box">
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
									<li class="menu-item"><a href="wb/wb_cheliangshibie.html">车型识别</a>
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
		<!--mobile header start-->
		<div class="m-header">
			<div class="am-g am-show-sm-only">
				<div class="am-u-sm-2">
					<div class="menu-bars">
						<a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i
							class="am-menu-toggle-icon am-icon-bars"></i></a>
						<!-- 侧边栏内容 -->
						<nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1"
							data-am-menu-offcanvas>
							<a href="javascript: void(0)" class="am-menu-toggle"></a>

							<div class="am-offcanvas">
								<div class="am-offcanvas-bar">
									<ul class="am-menu-nav am-avg-sm-1">
										<li><a href="../index.html" class="">首页</a></li>
										<li class="am-parent"><a href="#" class="">产品中心</a>
											<ul class="am-menu-sub am-collapse ">
												<li class=""><a href="./product1.html" class="">产品展示1</a>
												</li>
												<li class=""><a href="./product2.html" class="">产品展示2</a>
												</li>
												<li class=""><a href="./product3.html" class="">产品展示3</a>
												</li>
											</ul></li>
										<li class=""><a href="./example.html" class="">客户案例</a></li>
										<li class=""><a href="./solution.html" class="">解决方案</a></li>
										<li class="am-parent"><a href="./news.html" class="">新闻中心</a>
											<ul class="am-menu-sub am-collapse  ">
												<li class=""><a href="./news-content.html" class="">公司动态</a>
												</li>
												<li class=""><a href="./404-dark.html" class="">行业动态</a>
												</li>
												<li class=""><a href="./404-light.html" class="">精彩专题</a>
												</li>
											</ul></li>
										<li class=""><a href="./about.html" class="">关于我们</a></li>
										<li class=""><a href="./join.html" class="">加入我们</a></li>
										<li class=""><a href="./contact.html" class="">联系我们</a></li>
										<li class="am-parent"><a href="./news.html"
											class="nav-icon nav-icon-globe">Language</a>
											<ul class="am-menu-sub am-collapse  ">
												<li><a href="#">English</a></li>
												<li class=""><a href="#">Chinese</a></li>
											</ul></li>
										<li class="nav-share-contain">
											<div class="nav-share-links">
												<i class="am-icon-facebook"></i> <i class="am-icon-twitter"></i>
												<i class="am-icon-google-plus"></i> <i
													class="am-icon-pinterest"></i> <i class="am-icon-instagram"></i>
												<i class="am-icon-linkedin"></i> <i
													class="am-icon-youtube-play"></i> <i class="am-icon-rss"></i>
											</div>
										</li>
										<li class=""><a href="./login.html" class="">登录</a></li>
										<li class=""><a href="./register.html" class="">注册</a></li>
									</ul>

								</div>
							</div>
						</nav>

					</div>
				</div>
				<div class="am-u-sm-5 am-u-end">
					<div class="m-logo">
						<a href=""><img src="../assets/images/logo.png" alt=""></a>
					</div>
				</div>
			</div>
			<!--mobile header end-->
		</div>




		<!--===========layout-container================-->
		<div class="layout-container">
			<%
				String messageString = (String) request.getAttribute("message");
				String image_path = (String) request.getAttribute("image_path");//临时文件夹名字
				Map<String, String> result = null;
				try {
					result = (Map<String, String>) request.getAttribute("result");
				} catch (Exception e) {

				}
			%>
			<div class="error error-dark">
				<div class="container">
					<br></br>
					<%
						if (result == null) {
					%>
					<h3><%=messageString%></h3>
					<p>Something wrong.</p>
					<p>发生了一些错误，请根据提示重新尝试。</p>
					<%
						} else {
							Iterator<Map.Entry<String, String>> it = result.entrySet().iterator();
							while (it.hasNext()) {
								Map.Entry<String, String> entry = it.next();
								String image_name = entry.getKey();
								String resultString = entry.getValue();
								String[] results = resultString.split("@");
								//System.out.println("changdu：" + results.length);
								
					%>
								<img alt="" width="400"
									src="../wb_upload/<%=image_path + "/" + image_name%>">
					<%
								for (int i = 0; i < results.length; i++) {
									String temp_result=results[i];
					%>
									<h3><%=temp_result%></h3>
					<%
								}
							}
						}
					%>

					<form
						action="${pageContext.request.contextPath}/uploadFile/wb_delete.do"
						method="post">
						<input type="hidden" name="image_path" value="<%=image_path%>">
						<input type="submit" value="返回" class="am-btn am-btn-secondary" />
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>
