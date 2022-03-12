<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>CSS世界(异步图书出品)</title>
        <link rel="stylesheet" type="text/css" href="css/public.css"/>
        <link rel="stylesheet" type="text/css" href="css/book.css"/>
    </head>
    <body>
    <div class="head">
        <div class="shouye_head">
            <div class="shou_head">
                <a href="first.jsp">商城首页</a>
            </div>
            <div class="car">
                <a href="car.jsp"><img src="images/购物车.png" height="28px">
                    <span>购物车</span>
                </a>
            </div>
            <div class="login">
                <div><a href="注册.jsp">登录</a></div>
                <div><a href="注册.jsp">注册</a></div>
            </div>
        </div>
    </div>
    <div class="search_kuang">
        <div class="search">
            <input type="text" class="text">
            <button><img src="images/搜索图标.png" width="40px"></button>
        </div>
    </div>
    <div class="xi_nav">
        <div class="wrap">
            <ul class="menu-list">
                <li class="menu"><a href="first.jsp">首页</a></li>
                <li class="menu"><a href="#">全部分类</a></li>
                <li class="menu"><a href="#">新品上市</a></li>
                <li class="menu"><a href="#">热卖推荐</a></li>
            </ul>
        </div>
    </div>
    <div class="w">
        <div class="preview" id="preview">
            <div class="photo_xi">
                <img src="images/188b8e81859a3051.jpg">
            </div>
        </div>
        <div class="itemInfo-wrap">
            <div class="x-goodsname">
                <h3>CSS世界(异步图书出品)</h3>
            </div>
            <div class="news">
                <div class="" title="鑫空间-鑫生活博主，web前端开发，CSS3+HTML5网页制作，包含CSS深度学习知识点，配套作者开发的专业网站，为读者提供实例展示问题答疑　团购电话4006186622">
                    鑫空间-鑫生活博主，web前端开发，CSS3+HTML5网页制作，包含CSS深度学习知识点，配套作者开发的专业网站，为读者提供实例展示问题答疑　团购电话4006186622
                </div>
            </div>
            <div class="x-price">
                <span>￥</span>
                <div class="x-price_num">57.80</div>
            </div>
            <div class="x-action">
                <div class="liji">
                    <a href="#">立即购买</a>
                </div>
                <div class="add_cart">
                    <a href="car.jsp">加入购物车</a>
                </div>
            </div>
        </div>

    </div>
    </body>
</html>
