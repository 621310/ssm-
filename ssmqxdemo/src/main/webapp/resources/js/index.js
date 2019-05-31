$(function(){
    $("#modalbtn").click(function(){
        // 用js编码方式实现点击出现模态框
        $("#modaltest").modal();
    })
   //注册成功后提示
  var message = $("#infomessage").val();
	if (message.length > 0) {
		bootbox.alert({
			size : "small",
			title : "提示",
			message : message
		});
		$("#infomessage").val("");
	}
})