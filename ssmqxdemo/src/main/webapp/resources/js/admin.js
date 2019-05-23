$(function(){


    $(".collapse>li>a").click(function(el){
        el.preventDefault();//干掉a标签默认的跳转事件
        $(".collapse>li>a").removeClass("navactive");//这两行是给选中的a标签加样式
        $(this).addClass("navactive");
        $("#iframe-content").attr("src",$(this).data("iframesrc"));//实现点击导航栏切换iframe内容
        var lastpath = $(this).text();
       $("#path-main #pathnav .breadcrumb> li:last-child").html(lastpath);
        $("#path-main #pathnav .breadcrumb .secoundpath").html($(this).parent().parent().prev().text());
    });
    $("#path-main>#pathnav>ol>li>.welcome").click(function(el){
        console.log("dfs");
        el.preventDefault();//干掉a标签默认的跳转事件
        $("#iframe-content").attr("src",$(this).data("iframesrc"));//实现点击导航栏切换iframe内容
        $("#path-main #pathnav .breadcrumb> li:last-child").html("");
        $("#path-main #pathnav .breadcrumb .secoundpath").html("");
        $(".collapse>li>a").removeClass("navactive");
    })
})