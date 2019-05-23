<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>修改用户信息</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/font/iconfont.css">
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
        <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
      <![endif]-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/hdcss/updateuser.css">
</head>

<body>
	<div class="updateuserform" style="margin-top: 20px;">
		<form class="form-horizontal" action="<%=request.getContextPath() %>/admin/updateuser?pageNum=${pageNum}&pageSize=10" method="post">
			<input type="hidden" name="id" value="${user.id }">
					<input type="hidden" class="form-control" name="username" id="" value="${user.username }" placeholder="${user.username }">
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-5">
					<input type="password" class="form-control" id="" name="password"
						placeholder="">
				</div>
				<div class="col-sm-5"></div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">邮箱</label>
				<div class="col-sm-5">
					<input type="email" class="form-control" id="" name="email" placeholder="${user.email }">
				</div>
				<div class="col-sm-5"></div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label">手机号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="" name="phone" placeholder="${user.phone }">
				</div>
				<div class="col-sm-5"></div>
			</div>
			<div class="checkbox">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<c:forEach items="${addroles }" var="role">
						<label> <input type="radio" name="roleid" value="${role.id }"> ${role.rolename }
						</label>
					</c:forEach>
				</div>
				<div class="col-sm-3"></div>
			</div>

			<div class="form-group text-center" style="margin-top: 20px;">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<button type="submit" class="btn btn-primary registbtn"
						style="margin-right: 15px">修改用户信息</button>
					<a type="button" href="<%=request.getContextPath() %>/admin/sysuser?pageNum=${pageNum}&pageSize=10" class="btn btn-primary registbtn">取消</a>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</form>
	</div>
	<script
		src="<%=request.getContextPath()%>/resources/lib/jq/jquery-3.3.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/updateuser.js"
		type="text/javascript"></script>
</body>

</html>