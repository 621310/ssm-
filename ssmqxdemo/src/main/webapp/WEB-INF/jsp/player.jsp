<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>球员信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/font/iconfont.css">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/player.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/main.css">
</head>

<body>
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
                <a class="navbar-brand logo " href="index.html">NBA</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">球队</a></li>
                    <li class="active"><a href="#">球员</a></li>
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


    <div class="container playercontainer">
        <div class="page-header">
            <form class="searchplayer">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="请输入球员姓名">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-info"><span
                                class="glyphicon glyphicon-search"></span></button>
                    </span>
                </div>
            </form>
            <h3>球员信息</h3>
        </div>

        <div class="row">
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/zimuge.jpg" alt="扬尼斯 阿德托昆博"></a>
                    <div class="caption">
                        <h3 class="text-center">字母哥</h3>
                        <p><a href="#" class="btn btn-success" role="button">查看</a>
                            <button class="btn btn-info zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/kd.jpg" alt="凯文 杜兰特"></a>
                    <div class="caption">
                        <h3 class="text-center">凯文 杜兰特</h3>
                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                            <button class="btn btn-default zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/lbj.jpg" alt="勒布朗 詹姆斯"></a>
                    <div class="caption">
                        <h3 class="text-center">勒布朗 詹姆斯</h3>
                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                            <button class="btn btn-default zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/kuli.jpg" alt="..."></a>
                    <div class="caption">
                        <h3 class="text-center">史蒂芬 库里</h3>
                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                            <button class="btn btn-default zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/lbj.jpg" alt="勒布朗 詹姆斯"></a>
                    <div class="caption">
                        <h3 class="text-center">勒布朗 詹姆斯</h3>
                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                            <button class="btn btn-default zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-2 col-xs-6">
                <div class="thumbnail">
                    <a href="#"><img src="<%=request.getContextPath() %>/resources/img/player/kuli.jpg" alt="..."></a>
                    <div class="caption">
                        <h3 class="text-center">史蒂芬 库里</h3>
                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                            <button class="btn btn-default zan"><span class="iconfont icon-zan"></span></button>
                        </p>
                    </div>
                </div>
            </div>
           
            
           
           
           
           

        </div>
        <nav aria-label="Page navigation" class="text-center">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
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