$(function() {
	// 点击单选框，全选或者是全不选
	$(".allcheck").click(function(e) {
		$(".checkuser").prop("checked", $(".allcheck").prop("checked"));
	})
	$(".checkuser").click(function(e) {
		var flag = true;
		$(".checkuser").each(function(index, e) {
			if ($(e).prop("checked") == false) {
				flag = false;
			}
		});
		if (flag) {
			$(".allcheck").prop("checked", true);
		} else {
			$(".allcheck").prop("checked", false);
		}
	})

	$("#adduserbtn").click(function() {
		$("#adduser-form").submit();
	});
	$(".page>ul>li").click(function() {
		$(this).siblings("li").removeClass("active");
		$(this).addClass("active");
	})

	// 将当前用户ID设置到点击删除按钮后的模态框中
	$(".deleteonebtn").click(function(el) {
		el.preventDefault();// 干掉a标签默认的跳转事件
		var id = $(this).parent().parent().children('td').eq(1).html();
		$(".deleteuserform>#id").val(id);
	})
	$(".delsurebtn").click(function() {
		$(".deleteuserform").submit();
	})

	// 删除，添加，修改执行成功后弹出提示框
	var message = $(".infomessage").val();
	if (message.length > 0) {
		bootbox.alert({
			size : "small",
			title : "提示",
			message : message
		});
	}

	$(".deleteBatchUser").click(function() {
		var checkboxes = $(".checkuser:checked");
		if (checkboxes.length == 0) {
			bootbox.alert({
				size : "small",
				title : "提示",
				message : "请勾选需要删除的用户"
			})
		} else {
			var userIds = new Array();
			checkboxes.each(function() {
				userIds.push(this.value);
			});
			// 用ajax将要删除的数据传递到后端
			var datas = JSON.stringify(userIds);
			bootbox.confirm({
				size : "small",
				title : "提示",
				message : "你确认要删除选中的用户吗？",
				callback : function(result) {
					if (result) {
						$.ajax({
							url : "/ssmqxdemo/admin/batchDeleteUser",
							type : "post",
							data : {
								id : datas
							},
							success : function(rs) {
								if(rs == "success"){
									
									$(location).attr("href","/ssmqxdemo/admin/sysuser");
									bootbox.alert({
										size : "small",
										title : "提示",
										message : "删除成功！"
									});
								}
							}
						})
					}
				}
			})
		}
	})
})