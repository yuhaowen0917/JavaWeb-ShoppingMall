$(function(){
    // $(".c-sum_num").click(function(){
    // 	console.info($(this).text());
    // })
    totl();
    goodsnum();
    // 全选
    $(".all").click(function() {
        all = $(this).prop("checked")
        $(".each").each(function() {
            $(this).prop("checked", all);
        })
    })
    // 减少商品数量
    $(".reduce").click(function(){
        var num = $(this).siblings(".text_num").val();
        if(num>0){
            num--;
            $(this).siblings(".text_num").val(num);
        };
        var price=$(this).parents().siblings(".c-price").children(".c-price_num").text();
        var sum_num = $(this).parents().siblings(".c-sum").children(".c-sum_num");
        var sum = parseFloat(price*num);
        // console.log(sum);
        $(sum_num).text(sum);
        totl();
        goodsnum();
    });
    // 增加商品数量
    $(".add").click(function(){
        var num = $(this).siblings(".text_num").val();
        num++;
        $(this).siblings(".text_num").val(num);
        var price=$(this).parents().siblings(".c-price").children(".c-price_num").text();
        var sum_num = $(this).parents().siblings(".c-sum").children(".c-sum_num");
        var sum = parseFloat(price*num);
        // console.log(sum);
        $(sum_num).text(sum);
        totl();
        goodsnum();
    });
    // 删除商品
    $(".remove").click(function(){
        $(this).parents(".carts-goods").remove();
        totl();
        goodsnum();
    });
    // 总价
    function totl(){
        let sumprice = 0;
        $.each($(".c-sum_num"),function() {
            sumprice+=parseFloat($(this).text());
            $(".show-money span").text(sumprice);
        });
    };
    // 统计商品数量
    function goodsnum(){
        let goods_num=0;
        $.each($(".text_num"),function() {
            goods_num+=parseInt($(this).val());
            $(".goods_num span").text(goods_num);
        });
    }

});