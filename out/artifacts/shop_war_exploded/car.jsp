<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>商城购物车界面</title>
        <link rel="stylesheet" type="text/css" href="css/public.css"/>
        <link rel="stylesheet" type="text/css" href="css/carts.css"/>
        <script src="js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body>
        <div class="head">
            <div class="shouye_head">
                <a href="first.jsp">商城首页</a>
            </div>
        </div>
        <div class="cart">
            <div class="cart-head">
                <div class="column g-select">
                    <div class="g-checkbox">
                        <input type="checkbox" class="all each">
                    </div>
                    全选
                </div>
                <div class="column g-images">图片</div>
                <div class="column g-goodsname">商品名称</div>
                <div class="column g-props">商品信息</div>
                <div class="column g-price">单价</div>
                <div class="column g-quantity">数量</div>
                <div class="column g-sum">小计</div>
                <div class="column g-action">操作</div>
            </div>

            <c:forEach items="${carList}" var="item">
                <div class="carts-goods">
                    <div class="cell c-select">
                        <div class="c-checkbox">
                            <input type="checkbox" class="each">
                        </div>
                    </div>
                    <div class="cell c-images">
                        <a href="./detail.do?id=${item.goods_id}" title="${item.goods_name}"><img src="${item.pic}" alt="${item.goods_name}"></a>
                    </div>
                    <div class="cell c-goodsname"><a href="#" title="${item.goods_name}">${item.goods_name}</a></div>
                    <div class="cell c-props">${item.goods_name}</div>
                    <div class="cell c-price">
                        <span>￥</span>
                        <div class="c-price_num">${item.unitprice}</div>
                    </div>
                    <div class="cell c-quantity">
                        <button type="button"  class="reduce">-</button>
                        <input type="text" value="${item.quantity}" class="text_num">
                        <button type="button" class="add">+</button>
                    </div>
                    <div class="cell c-sum">
                        <span>￥</span>
                        <div class="c-sum_num">${item.unitprice}</div>
                    </div>
                    <div class="cell c-action">
                        <a href="#" class="remove">移除商品</a>
                    </div>
                </div>

            </c:forEach>

         <%--   <div class="carts-goods">
                <div class="cell c-select">
                    <div class="c-checkbox">
                        <input type="checkbox" class="each">
                    </div>
                </div>
                <div class="cell c-images">
                    <a href="./detail.do?id=book02" title="CSS新世界"><img src="images/carts/8e7d4ce45fdacb89.jpg" alt="CSS新世界"></a>
                </div>
                <div class="cell c-goodsname"><a href="#" title="CSS新世界">CSS新世界</a></div>
                <div class="cell c-props">CSS新世界</div>
                <div class="cell c-price">
                    <span >￥</span>
                    <div class="c-price_num">108.80</div>
                </div>
                <div class="cell c-quantity">
                    <button type="button" class="reduce">-</button>
                    <input type="text" value="1" class="text_num">
                    <button type="button" class="add">+</button>
                </div>
                <div class="cell c-sum">
                    <span>￥</span>
                    <div class="c-sum_num">108.80</div>
                </div>
                <div class="cell c-action">
                    <a href="#" class="remove">移除商品</a>
                </div>
            </div>
            <div class="carts-goods">
                <div class="cell c-select">
                    <div class="c-checkbox">
                        <input type="checkbox" class="each">
                    </div>
                </div>
                <div class="cell c-images">
                    <a href="./detail.do?id=book03" title="CSS世界(异步图书出品)"><img src="images/188b8e81859a3051.jpg" alt="CSS新世界"></a>
                </div>
                <div class="cell c-goodsname"><a href="book.html" title="CSS世界(异步图书出品)">CSS世界(异步图书出品)</a></div>
                <div class="cell c-props">CSS世界(异步图书出品)</div>
                <div class="cell c-price">
                    <span >￥</span>
                    <div class="c-price_num">57.80</div>
                </div>
                <div class="cell c-quantity">
                    <button type="button" class="reduce">-</button>
                    <input type="text" value="1" class="text_num">
                    <button type="button" class="add">+</button>
                </div>
                <div class="cell c-sum">
                    <span>￥</span>
                    <div class="c-sum_num">57.80</div>
                </div>
                <div class="cell c-action">
                    <a href="#" class="remove">移除商品</a>
                </div>
            </div>--%>
        </div>
        <div class="payment">
            <div class="cart-pay">
                <div class="pay-left">
                    <div class="select_all">
                        <input type="checkbox" class="all each">
                        全选
                    </div>
                    <div class="goods_num">
                        已选择数量:
                        <span>0</span>
                        件
                    </div>
                </div>
                <div class="pay-right">
                    <div class="right_jie">
                        <div class="btn">
                            <a href="#">结算</a>
                        </div>
                        <div class="price-sum">
                            <div class="price-show">总价是：</div>
                            <div class="show-money">
                                ￥
                                <span>00.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">

        </script>
    </body>
</html>
