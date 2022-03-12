<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>商城首页</title>
        <link rel="stylesheet" type="text/css" href="css/public.css"/>
        <link rel="stylesheet" type="text/css" href="css/shouye.css"/>
        <script src="js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/front_page.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body>
        <%String user_id = request.getParameter("user_id");%>
        <div class="head">
            <div class="head_zi">
                <div class="huan">
                    <a href="manage.jsp"><%=request.getSession().getAttribute("user_id")%></a>
                    ,欢迎您
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
        <!--搜索框-->
        <div class="search_kuang">
            <div class="search">
                <input type="text" class="text">
                <button><img src="images/搜索图标.png" width="40px"></button>
            </div>
        </div>
        <div class="shop">
            <div class="lunbo" >
                <span class="right" id="right"></span>
                <span class="left" id="left"></span>
                <div id="lunbo" >
                    <div>
                        <a href="#"><img src="images/mi11.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/pingban5.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/450ebe4e2420eba7064b6ce08b2fc503.jpg"></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/3e34ddd6b7bcbfb90ed09e871d291593.png" ></a>
                    </div>
                    <div>
                        <a href="#"><img src="images/f89261d8655d76f2ab2340e4a3738678.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="nei">
                <div class="box_tit w">
                    <h2 class="title">手机</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=phone01">
                                    <div class="ph">
                                        <img src="images/phone/63e15f377e87212d460592b4a1369ccd.jpg" >
                                    </div>
                                    <div class="na">Xiaomi 12X</div>
                                    <p>￥3199</p>
                                </a>
                            </li>

                            <li class="phone_tu">
                                <a href="./detail.do?id=phone02">
                                    <div class="ph">
                                        <img src="images/phone/a7382271e3a677bf188679ca38d68a42.jpg" >
                                    </div>
                                    <div class="na">Xiaomi 12 Pro</div>
                                    <p>￥4699</p>
                                </a>
                            </li>

                            <li class="phone_tu">
                                <a href="./detail.do?id=phone03">
                                    <div class="ph">
                                        <img src="images/phone/0d4b362431de4bdda03315ffdbc7b32a.jpg" >
                                    </div>
                                    <div class="na">
                                        Xiaomi 11 青春活力版
                                    </div>
                                    <p>￥1999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=phone04">
                                    <div class="ph">
                                        <img src="images/phone/6d0a3e7acc3e91e2cfd83dbbe1d1c029.jpg" >
                                    </div>
                                    <div class="na">
                                        Redmi Note 11 Pro系列
                                    </div>
                                    <p>￥1799</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=book01">
                                    <div class="ph">
                                        <img src="images/carts/f84ce8d17e55cf74.jpg" >
                                    </div>
                                    <div class="na">Vue.js全家桶零基础入门到进阶项目实战</div>
                                    <p>￥99.20</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=book02">
                                    <div class="ph">
                                        <img src="images/carts/8e7d4ce45fdacb89.jpg" >
                                    </div>
                                    <div class="na">CSS新世界</div>
                                    <p>￥108.80</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=book03">
                                    <div class="ph">
                                        <img src="images/188b8e81859a3051.jpg" >
                                    </div>
                                    <div class="na">
                                        CSS世界(异步图书出品)
                                    </div>
                                    <p>￥57.80</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=phone04">
                                    <div class="ph">
                                        <img src="images/phone/6d0a3e7acc3e91e2cfd83dbbe1d1c029.jpg" >
                                    </div>
                                    <div class="na">
                                        Redmi Note 11 Pro系列
                                    </div>
                                    <p>￥1799</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">电脑</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com01">
                                    <div class="ph">
                                        <img src="images/computer/dbeee1b261367546.jpg" >
                                    </div>
                                    <div class="na">微星(MSI)PRO 电脑主板</div>
                                    <p>￥3629</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com02">
                                    <div class="ph">
                                        <img src="images/computer/8079c5b8a20b6eb7.jpg" >
                                    </div>
                                    <div class="na">新品英特尔酷睿12代</div>
                                    <p>￥1999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com03">
                                    <div class="ph">
                                        <img src="images/computer/O1CN01XdmjpR1IOuqoGgg5r_!!2616970884.jpg" >
                                    </div>
                                    <div class="na">
                                        笔记本电脑小新Air14 银
                                    </div>
                                    <p>￥4399</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com04">
                                    <div class="ph">
                                        <img src="images/computer/f063016c41fa50de.jpg" >
                                    </div>
                                    <div class="na">
                                        索尼（SONY）playstation5
                                    </div>
                                    <p>￥5099</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com01">
                                    <div class="ph">
                                        <img src="images/computer/dbeee1b261367546.jpg" >
                                    </div>
                                    <div class="na">微星(MSI)PRO 电脑主板</div>
                                    <p>￥3629</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com02">
                                    <div class="ph">
                                        <img src="images/computer/8079c5b8a20b6eb7.jpg" >
                                    </div>
                                    <div class="na">新品英特尔酷睿12代</div>
                                    <p>￥1999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com03">
                                    <div class="ph">
                                        <img src="images/computer/O1CN01XdmjpR1IOuqoGgg5r_!!2616970884.jpg" >
                                    </div>
                                    <div class="na">
                                        笔记本电脑小新Air14 银
                                    </div>
                                    <p>￥4399</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=com04">
                                    <div class="ph">
                                        <img src="images/computer/f063016c41fa50de.jpg" >
                                    </div>
                                    <div class="na">
                                        索尼（SONY）playstation5
                                    </div>
                                    <p>￥5099</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">家用电器</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home01">
                                    <div class="ph">
                                        <img src="images/home/181a74dccd6f4a71.jpg" >
                                    </div>
                                    <div class="na">
                                        西门子（SIEMENS）蒸烤箱一体机嵌入式
                                    </div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home02">
                                    <div class="ph">
                                        <img src="images/home/c7c15101f2c8a652a4a0d069501d1e53.jpg" >
                                    </div>
                                    <div class="na">小米电视6 至尊版 65英寸</div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home03">
                                    <div class="ph">
                                        <img src="images/home/cf71655746411c0f.jpg!cc_320x320.webp" >
                                    </div>
                                    <div class="na">
                                        亿田（entive）D2ZK 集成灶蒸烤一体
                                    </div>
                                    <p>￥13800</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home04">
                                    <div class="ph">
                                        <img src="images/home/33508813f3a5059d.jpg" >
                                    </div>
                                    <div class="na">
                                        卡萨帝（Casarte）635升四开门十字对开门冰箱
                                    </div>
                                    <p>￥12499</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home01">
                                    <div class="ph">
                                        <img src="images/home/181a74dccd6f4a71.jpg" >
                                    </div>
                                    <div class="na">
                                        西门子（SIEMENS）蒸烤箱一体机嵌入式
                                    </div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home02">
                                    <div class="ph">
                                        <img src="images/home/c7c15101f2c8a652a4a0d069501d1e53.jpg" >
                                    </div>
                                    <div class="na">小米电视6 至尊版 65英寸</div>
                                    <p>￥7999</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home03">
                                    <div class="ph">
                                        <img src="images/home/cf71655746411c0f.jpg!cc_320x320.webp" >
                                    </div>
                                    <div class="na">
                                        亿田（entive）D2ZK 集成灶蒸烤一体
                                    </div>
                                    <p>￥13800</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=home04">
                                    <div class="ph">
                                        <img src="images/home/33508813f3a5059d.jpg" >
                                    </div>
                                    <div class="na">
                                        卡萨帝（Casarte）635升四开门十字对开门冰箱
                                    </div>
                                    <p>￥12499</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="box_tit w">
                    <h2 class="title">服饰</h2>
                    <div class="nei_pohot">
                        <ul>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes01">
                                    <div class="ph">
                                        <img src="images/clothes/16fea7d7bb3f9144.jpg" >
                                    </div>
                                    <div class="na">梵希蔓垂感卡其色西装外套女</div>
                                    <p>￥299</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes02">
                                    <div class="ph">
                                        <img src="images/clothes/7ea39f5f4878b162.jpg" >
                                    </div>
                                    <div class="na">海青蓝时尚通勤小西服女</div>
                                    <p>￥358</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes03">
                                    <div class="ph">
                                        <img src="images/clothes/703d1f6c28d1c818.jpg" >
                                    </div>
                                    <div class="na">
                                        森马卫衣男2021秋新款oversize创意图案
                                    </div>
                                    <p>￥139</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes04">
                                    <div class="ph">
                                        <img src="images/clothes/4cc75617291b3b63.jpg" >
                                    </div>
                                    <div class="na">
                                        Lilbetter情侣重磅卫衣男加绒
                                    </div>
                                    <p>￥215</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes01">
                                    <div class="ph">
                                        <img src="images/clothes/16fea7d7bb3f9144.jpg" >
                                    </div>
                                    <div class="na">梵希蔓垂感卡其色西装外套女</div>
                                    <p>￥299</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes02">
                                    <div class="ph">
                                        <img src="images/clothes/7ea39f5f4878b162.jpg" >
                                    </div>
                                    <div class="na">海青蓝时尚通勤小西服女</div>
                                    <p>￥358</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes03">
                                    <div class="ph">
                                        <img src="images/clothes/703d1f6c28d1c818.jpg" >
                                    </div>
                                    <div class="na">
                                        森马卫衣男2021秋新款oversize创意图案
                                    </div>
                                    <p>￥139</p>
                                </a>
                            </li>
                            <li class="phone_tu">
                                <a href="./detail.do?id=clothes04">
                                    <div class="ph">
                                        <img src="images/clothes/4cc75617291b3b63.jpg" >
                                    </div>
                                    <div class="na">
                                        Lilbetter情侣重磅卫衣男加绒
                                    </div>
                                    <p>￥215</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav">
            <ul>
                <li class="current">手机</li>
                <li>电脑</li>
                <li>家居</li>
                <li>服饰</li>
                <div class="back">返回顶部</div>
            </ul>
        </div>

        <div class="footer">
            <div class="translate">
                <div class="footer-links">
                    <h5>购物指南</h5>
                    <ul>
                        <li><a href="#">购物流程</a></li>
                        <li><a href="#">会员介绍</a></li>
                        <li><a href="#">生活旅行</a></li>
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">联系客服</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>支付方式</h5>
                    <ul>
                        <li><a href="#">信用卡</a></li>
                        <li><a href="#">货到付款</a></li>
                        <li><a href="#">在线付款</a></li>
                        <li><a href="#">分期付款</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>售后服务</h5>
                    <ul>
                        <li><a href="#">售后政策</a></li>
                        <li><a href="#">退款说明</a></li>
                        <li><a href="#">返修/退换货</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>帮助中心</h5>
                    <ul>
                        <li><a href="#">账户管理</a></li>
                        <li><a href="#">自助服务</a></li>
                        <li><a href="#">订单操作</a></li>
                        <li><a href="#">服务网点</a></li>
                        <li><a href="#">授权体验店/专区</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h5>关于我们</h5>
                    <ul>
                        <li><a href="#">新浪微博</a></li>
                        <li><a href="#">官方微信</a></li>
                        <li><a href="#">联系我们</a></li>
                        <li><a href="#">加入我们</a></li>
                        <li><a href="#">公益基金会</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
