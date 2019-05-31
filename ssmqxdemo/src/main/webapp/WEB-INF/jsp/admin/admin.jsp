<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/font/iconfont.css">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
        <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
      <![endif]-->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/hdcss/admin.css">
</head>

<body>
    <!-- 导航栏 -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header col-md-6">
                <a class="navbar-brand logo active" href="#">NBA后台管理系统</a>
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-3 bar-right-admin">
                <span>admin ${year }-${month }-${day }</span>
            </div>
            <div class="col-md-1 tuichu">
                 <a href="${pageContext.request.contextPath }/logout"><span class="iconfont icon-tuichu"></span></a>
            </div>
        </div>
        
    </nav>
    <div class="slid_bar">
        <div class="sidlebar_content">
            <div>
                    <a href="#collapse_system" data-toggle="collapse"><i class="iconfont icon-list2"></i> 系统设置</a>
                    <ul id="collapse_system" class="collapse in">
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#" data-iframesrc="<%=request.getContextPath() %>/admin/sysuser?pageNum=1&pageSize=10">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#" data-iframesrc="sysrole.html">角色管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#" data-iframesrc="syspermission.html">权限管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                    </ul>
            </div>

            <div>
                    <a href="#collapse_role" data-toggle="collapse"><i class="iconfont icon-list2"></i> 信息设置</a>
                    <ul id="collapse_role" class="collapse">
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                    </ul>
            </div>

            <div>
                    <a href="#collapse_user" data-toggle="collapse"><i class="iconfont icon-list2"></i> 系统备份</a>
                    <ul id="collapse_user" class="collapse">
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                        <li><i class="iconfont icon-tianjiaxuanxiang"></i> <a href="#">用户管理</a></li>
                    </ul>
            </div>
        </div>
    </div>
    
    <div id="path-main">
        <div id="pathnav">
            <ol class="breadcrumb">
                <li><a href="#" data-iframesrc="weclcome.html" class="welcome">NBA后台管理系统</a></li>
                <li><a href="#" class="secoundpath"></a></li>
                <li class="active" class="lastpath"></li>
              </ol>
        </div>
    </div>

    <script src="<%=request.getContextPath() %>/resources/lib/jq/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/admin.js" type="text/javascript"></script>
</body>
</html>
<iframe src="<%=request.getContextPath() %>/resources/html/weclcome.html" class="navbar-fixed-bottom" id="iframe-content" frameborder="0" scrolling="auto" allowfullscreen="true" style="width:100%;height:100%;"></iframe>
