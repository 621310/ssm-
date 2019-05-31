<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>后台管理系统</title>
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
	href="<%=request.getContextPath()%>/resources/css/hdcss/sysuser.css">
</head>

<body>
		<input type="hidden" value="${info }" class="infomessage">
	<div class="container-fluid">
		<div class="row">
			<div class="search_title_bar">搜索</div>
		</div>
		<div class="row" id="manage-user">
			<form action="<%=request.getContextPath() %>/admin/searchUser" method="post" class="form-inline" id="seacher-user">
				<div class="form-group">
					<label for="">用户名:</label> <input type="text" name="username"
						class="form-control input-sm">
				</div>
				<div class="form-group">
					<label for="">手机号:</label> <input type="text" name="phone"
						class="form-control input-sm">
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-info btn-sm" value="搜索">
				</div>
			</form>
			<div class="text-right" id="settinguser">
				<button class="btn btn-info adduser" data-toggle="modal"
					data-target="#addUserModal">添加用户</button>
				<button class="btn btn-danger deleteBatchUser">删除用户</button>
			</div>
		</div>
		<div id="user-main" class="row">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<td style="width: 50px;" class="allchecked text-center"><input
							type="checkbox" class="allcheck"></td>
						<td>id</td>
						<td>用户名</td>
						<td>密码</td>
						<td>邮箱</td>
						<td>手机号</td>
						<td>角色</td>
						<td style="width: 120px;"></td>
					</tr>
					<c:forEach items="${users.list}" var="user">
						<tr>
							<td class="text-center"><input value="${user.id }" type="checkbox" class="checkuser"></td>
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.password }</td>
							<td>${user.email }</td>
							<td>${user.phone }</td>
							<td>${user.role.rolename }</td>
							<td><a
								href="<%=request.getContextPath() %>/admin/updateUserView?id=${user.id }&pageNum=${users.pageNum}">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="deleteonebtn" data-toggle="modal" data-target="#deleteUserModal">删除</a></td>
						</tr>
					</c:forEach>


				</table>
			</div>
		</div>
		<div class="row text-center">
			<nav aria-label="Page navigation" class="page">
				<ul class="pagination">
					<li><a href="#"> <span aria-hidden="true">当前第
								${users.pageNum} 页</span>
					</a></li>
					<li><a
						href="<%=request.getContextPath() %>/admin/sysuser?pageNum=${users.prePage}&pageSize=10"
						aria-label="Previous"> <span aria-hidden="true">上一页</span>
							<li><a href="<%=request.getContextPath() %>/admin/sysuser?pageNum=${users.nextPage}&pageSize=10"
								aria-label="Next"> <span aria-hidden="true">下一页</span>
							</a></li>
							<li><a href="#"> <span aria-hidden="true">共${users.pages} 页</span></a></li>
				</ul>
			</nav>
		</div>
	</div>

	<!-- 添加用户模态框 -->
	<div class="modal fade" id="addUserModal" tabindex="-1"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form action="${pageContext.request.contextPath }/admin/adduser"
						class="form-horizontal" id="adduser-form" method="post">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" name="username" class="form-control" id=""
									placeholder="请输入用户名">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" name="password" class="form-control"
									id="" placeholder="请输入密码">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="email" name="email" class="form-control" id=""
									placeholder="请输入邮箱">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">手机号</label>
							<div class="col-sm-10">
								<input type="text" name="phone" class="form-control" id=""
									placeholder="请输入手机号">
							</div>
						</div>
						<div class="checkbox text-center">
							<c:forEach items="${addroles }" var="role">
								<label> <input type="radio" name="roleid"
									value="${role.id }"> ${role.rolename }
								</label>
							</c:forEach>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="adduserbtn" class="btn btn-primary ">添加用户</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 删除用户模态框 -->
	<div class="modal fade" id="deleteUserModal" tabindex="-1"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">提示</h4>
				</div>
				<div class="modal-body">
					<form action="<%=request.getContextPath() %>/admin/deleteuser" method="post" class="deleteuserform">
						<input type="hidden" value="" name="id" id="id">
						<input type="hidden" value="${users.pageNum}" name="pageNum">
					</form>
					<p>确认删除这条记录吗？</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger delsurebtn" data-dismiss="modal">确认</button>
					<button type="button" id="adduserbtn" data-dismiss="modal" class="btn btn-primary ">取消</button>
				</div>
			</div>
		</div>
	</div>

	<script
		src="<%=request.getContextPath()%>/resources/lib/jq/jquery-3.3.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/lib/bootbox.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/sysuer.js" type="text/javascript"></script>
</body>

</html>