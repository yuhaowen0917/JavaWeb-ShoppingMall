$(function (){
	
    $("#signUp").click(function() {
        $("#dowebok").addClass("right-panel-active");
    });
    $("#signIn").click(function() {
        $("#dowebok").removeClass("right-panel-active");
    });
	// 表单验证
	$(".register").validate({
		rules:{
			// 绑定的是 name 
			username:{
				required: true,
			},
			user_id:{
				required: true,
			},
			password:{
				required: true,
				rangelength:[8,20],
			},
			second_pwd:{
				required: true,
				rangelength:[8,20],
				equalTo:"#pwd",
			},
			email:{
				required: true,
				email:true,
			},
			birth:{
				required: true,
				dateISO:true,
			},
			phone:{
				required: true,
				minlength:11,
			},
			address:{
				required: true,
			},
		},
		messages:{
			username:'请输入用户名',
			user_id:'请输入账号',
			password:{
				required:'密码不能为空',
				rangelength:"密码长度在8~20位",
			},
			second_pwd:{
				required:'密码不能为空',
				rangelength:"密码长度在8~20位",
				equalTo:'两次密码不同',
			},
			email:{
				required:'请输入电子邮箱',
				email:'请输入正确的邮箱格式',
			},
			birth:{
				required: '请输入您的生日',
				dateISO:'输入正确格式的日期',
			},
			phone:{
				required:"手机号码不能为空",
				minlength:"手机号应为11位",
			},
			address:{
				required:'请留下您的收货地址',
			},
		}
	});
	$(".sign").validate({
		rules:{
			username:{
				required: true,
			},
			user_id:{
				required: true,
			},
			password:{
				required: true,
				rangelength:[8,20],
			},
		},
		messages:{
			user_id:'请输入账号',
			password:{
				required:'密码不能为空',
				rangelength:"密码长度在8~20位",
			},
		},
	});
});