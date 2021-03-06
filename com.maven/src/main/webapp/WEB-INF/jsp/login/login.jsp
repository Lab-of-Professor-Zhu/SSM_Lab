<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/login.do">
		<table border="1">
			<tr>
				<td>用户名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
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
  <title>Document</title>
  <link rel="stylesheet" href="<%=path %>/assets/css/amazeui.css" />
  <link rel="stylesheet" href="<%=path %>/assets/css/other.min.css" />
</head>
<body class="login-container">
  <div class="login-box">
    <div class="logo-img">
      <img src="../assets/images/logo2_03.png" alt="" />
    </div>
    <form action="${pageContext.request.contextPath }/user/login.do" class="am-form" data-am-validator>
      <div class="am-form-group">
        <label for="doc-vld-name-2"><i class="am-icon-user"></i></label>
        <input type="text" id="doc-vld-name-2" name="name" minlength="3" placeholder="输入用户名（至少 3 个字符）" required/>
      </div>

      <div class="am-form-group">
        <label for="doc-vld-email-2"><i class="am-icon-key"></i></label>
        <input type="password" id="doc-vld-password-2" name="password" placeholder="输入密码" required/>
      </div>
      <button class="am-btn am-btn-secondary"  type="submit">登录</button>
    </form>
  </div>
</body>
</html>