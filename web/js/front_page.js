var index = $(this).index();
index=0;

$(function() {
	//节流阀 互斥锁
	var flag = true;
	// 导航栏显示隐藏
	let boxTop = $(".nei").offset().top;
	toggleTool();
	function toggleTool(){
		if ($(document).scrollTop() >= boxTop){
			$(".nav").fadeIn(800);
		}else {
			$(".nav").fadeOut(800);
		}
	};
	//页面滚动
	$(window).scroll(function(){
		// console.info($(document).scrollTop());
		toggleTool();
		//滚动到相应区域，导航栏颜色随之变化
		if(flag) {
			$(".nei .w").each(function(i,e){
				if($(document).scrollTop() >= $(e).offset().top){
					// console.info(i);
					$(".nav li").eq(i).addClass("current").siblings().removeClass("current");
				}
			})
		}
	});
	// 返回顶部
	$(".back").click(function(){
		$("body,html").stop().animate({
			scrollTop:0,
		});
	});
	// 导航栏点击跳转到相应页面
	$(".nav li").click(function() {
		flag = false;
		console.info($(this).index());
		let current = $(".nei .w").eq($(this).index()).offset().top;
		$("body,html").stop().animate({
			scrollTop:current
		},function (){
			flag = true;
		});
		//点击之后，让当前li 添加current类名，兄弟节点移除current类名
		$(this).addClass("current").siblings().removeClass("current");
	})
	//使用 判断index范围
	$("#right").click(function (){
		index++;
		console.info(index);
		// console.info('1');
		$("#lunbo div ").eq(index).stop().slideDown(100).siblings().stop().slideUp(100);
	});
	$("#left").click(function (){
		index--;
		console.info(index);
		$("#lunbo div ").eq(index).stop().slideDown(100).siblings().stop().slideUp(100);
	});
});