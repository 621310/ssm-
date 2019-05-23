<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/lib/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/font/iconfont.css">
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/main.css">
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
                <a class="navbar-brand logo active" href="#">NBA</a>
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
                    <li><a href="login.jsp"><span class="iconfont icon-LC_icon_user_line_1 user"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于我们 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">用户反馈</a></li>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">帮助</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info"><span
                                    class="glyphicon glyphicon-search"></span></button>
                        </span>
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

    <!-- 轮播图 -->

    <div class="container ">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">今日比赛 <span class="iconfont icon-gengduo"
                                style="font-size:14px; margin-left:175px; cursor: pointer;">更多比赛</span></h3>
                    </div>
                    <div class="panel-body">
                        <div class="firstbisai">
                            <div class="kaituozhe"><strong>122</strong>
                                <div>开拓者</div>
                            </div>
                            <div class="date hidden-md">2019年5月4日</div>
                            <div class="vs">vs</div>
                            <div class="juejin"><strong>100</strong>
                                <div>掘金</div>
                            </div>
                        </div>
                        <div class="firstbisai">
                            <div class="kaierteren"><strong>100</strong>
                                <div>凯尔特人</div>
                            </div>
                            <div class="date hidden-md">2019年5月4日</div>
                            <div class="vs">vs</div>
                            <div class="juejin"><strong>100</strong>
                                <div>掘金</div>
                            </div>
                        </div>
                        <div class="firstbisai">
                            <div class="kaituozhe"><strong>100</strong>
                                <div>开拓者</div>
                            </div>
                            <div class="date hidden-md">2019年5月4日</div>
                            <div class="vs">vs</div>
                            <div class="juejin"><strong>100</strong>
                                <div>掘金</div>
                            </div>
                        </div>
                        <div class="firstbisai">
                            <div class="kaituozhe"><strong>100</strong>
                                <div>开拓者</div>
                            </div>
                            <div class="date hidden-md">2019年5月4日</div>
                            <div class="vs">vs</div>
                            <div class="juejin"><strong>100</strong>
                                <div>掘金</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div id="carousel-id" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-id" data-slide-to="0" class=""></li>
                        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item">
                            <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide"
                                src="<%=request.getContextPath() %>/resources/img/cj.jpg">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>Example headline.</h1>
                                    <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and
                                        "previous" Glyphicon buttons on the left and right might not load/display
                                        properly due to web browser security rules.</p>
                                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"
                                src="<%=request.getContextPath() %>/resources/img/lld.jpg">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>Another example headline.</h1>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                        porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id
                                        elit.</p>
                                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="item active">
                            <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide"
                                src="<%=request.getContextPath() %>/resources/img/lbj.jpg">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>One more for good measure.</h1>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                        porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id
                                        elit.</p>
                                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span
                            class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#carousel-id" data-slide="next"><span
                            class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
        </div>
    </div>

    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">热点要闻 <span class="iconfont icon-gengduo"
                                style="font-size:14px;float: right; cursor: pointer;">更多</span></h3>
                    </div>
                    <div class="panel-body">
                        <div class="news">
                            <img src="<%=request.getContextPath() %>/resources/img/1.jpg" alt="">
                            <p>
                                <strong> 消息人士称，现年42岁的泰伦-卢还没有正式决定接掌湖人队教鞭，因为双方还有一些合同方面的细节问题没有达成一致意见。</strong>
                            </p>
                        </div>
                        <div class="news">
                            <img src="<%=request.getContextPath() %>/resources/img/1.jpg" alt="">
                            <p>
                                <strong> 消息人士称，现年42岁的泰伦-卢还没有正式决定接掌湖人队教鞭，因为双方还有一些合同方面的细节问题没有达成一致意见。</strong>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
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