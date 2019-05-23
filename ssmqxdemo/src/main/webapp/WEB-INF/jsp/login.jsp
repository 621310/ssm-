<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>用户登录</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/font/iconfont.css">
  <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
  <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
  <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/main.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/login.css">
</head>

<body>
  <!-- 导航栏 -->
  <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand logo active" href="index.jsp">NBA</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li><a href="#">球队</a></li>
          <li><a href="player.html">球员</a></li>
          <li><a href="#">资讯</a></li>
          <li><a href="#">赛程</a></li>
          <li><a href="#">话题区</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="iconfont icon-LC_icon_user_line_1 user"></span></a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于我们 <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">用户反馈</a></li>
              <li><a href="#">联系我们</a></li>
              <li><a href="#">帮助</a></li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
  </nav>

  <div class="container">

    <div class="row">
      <div class="col-md-3 col-sm-2 hidden-xs"></div>
      <div class="col-md-6 col-sm-8 col-xs-12 cons">
        <ul class="nav nav-tabs">
          <li role="presentation" class="active col-xs-6 text-center"><a href="#loginform" data-toggle="tab">登录账号</a>
          </li>
          <li role="presentation" class="col-xs-6 text-center"><a href="#registform" data-toggle="tab">注册账号</a></li>
        </ul>
        <div class="tab-content">
          <div id="loginform" class="tab-pane fade in active">

            <form action="" method="POST" role="form">
              <div class="form-group">
                <label for="">用户</label>
                <input type="text" class="form-control" id="" placeholder="请输入邮箱/用户名/手机号">
              </div>
              <div class="from-group">
                <label for="">密码</label>
                <input type="password" class="form-control" id="" placeholder="请输入密码">
              </div>
              <div class="checkbox text-center remeberpwd">
                <label for=""><input type="checkbox"> 记住密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                  href="#">找回密码</a>

              </div>
              <button type="submit" class="btn btn-success loginbtn">登录</button>
              <div class="from-group">
                <p>使用其他方式登录</p>
                <div class="text-center loginicon">
                  <span class="iconfont icon-icon_qq"></span>
                  <span class="iconfont icon-weixin"></span>
                  <span class="iconfont icon-weibo"></span>
                </div>
              </div>
            </form>


          </div>
          <div id="registform" class="tab-pane fade">
            <form class="form-horizontal" action="#">
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="" placeholder="请输入用户名">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" id="" placeholder="请输入密码">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="" placeholder="请输入邮箱">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">手机号</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="" placeholder="请输入手机号">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">验证码</label>
                  <div class="col-sm-6">
                    <input type="email" class="form-control" id="" placeholder="请输入手机验证码">
                  </div>
                  <div class="col-sm-4">
                    <button class="btn btn-primary">点击获取验证码</button>
                  </div>
                </div>
                
              <div class="form-group">
                <div class="col-xs-2"></div>
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary registbtn">注册</button>
                </div>
                <div class="col-xs-2"></div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-2 hidden-xs"></div>
    </div>

  </div>


  <div class="footer hidden-xs">
    <div class="bgopacity">
      <div class="footerlogo"><img class="center-block" src="<%=request.getContextPath() %>/resources/img/footerlogo.gif" alt=""></div>
      <p class="text-center">
        <a href="#">关于NBA |</a>
        <a href="#">服务协议 |</a>
        <a href="#">隐私政策 |</a>
        <a href="#">开放平台 |</a>
        <a href="#">客服中心 |</a>
        <a href="#">举报中心 |</a>
      </p>
      <p class="text-center">Copyright © 1998 - 2019 Tencent. All Rights Reserved</p>
    </div>
  </div>
  <script src="<%=request.getContextPath() %>/resources/lib/jq/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath() %>/resources/js/index.js" type="text/javascript"></script>
</body>

</html>