<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/4
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>在线商城注册页面</title>
        <link rel="stylesheet" type="text/css" href="css/public.css"/>
        <link rel="stylesheet" type="text/css" href="css/login.css"/>
        <script src="js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/login.js" type="text/javascript" charset="utf-8"></script>

    </head>
    <body>
        <div class="head">
            <div class="shouye_head">
                <a href="first.jsp">商城首页</a>
            </div>
        </div>
        <div class="dowebok" id="dowebok">
            <!-- 注册 -->
            <div class="form-container sign-up">
                <form action="<%=request.getContextPath() %>/register.do" method="post" class="register">
                    <h1>注册</h1>
                    <input type="text"  id="username" name="username" placeholder="请输入用户名" />
                    <input type="text"  id="user_id" name="user_id" placeholder="账号" />
                    <input type="password" id="pwd" name="password" placeholder="请输入密码" />
                    <input type="password" id="second_pwd" name="second_pwd" placeholder="请再次输入密码" />
                    <input id="email" id="email" name="email" type="email" placeholder="请输入正确的邮箱格式">
                    <input type="text" id="birth" name="birth" placeholder="出生日期 以YYYY-MM-DD格式" />
                    <input type="text" id="phone" name="phone" placeholder="手机号码" />
                    <input type="text" id="address" name="address" placeholder="收货地址" />
                    <button>注册</button>
                </form>
            </div>
            <!-- 登录 -->
            <div class="form-container sign-in">
                <form action="login.do" method="post" class="sign">
                    <h1>登录</h1>
                    <input type="text" name="user_id" placeholder="账号">
                    <input type="password"  name="password" placeholder="密码">
                    <a href="###">忘记密码？</a>
                    <button>登录</button>
                </form>
            </div>
            <!-- 两边的蒙版 -->
            <div class="overlay-container">
                <div class="overlay">
                    <!-- 登录蒙版 -->
                    <div class="overlay-panel mask-left">
                        <h1>已有帐号？</h1>
                        <p>请使用您的帐号进行登录</p>
                        <button class="ghost" id="signIn">登录</button>
                    </div>
                    <!-- 注册蒙版 -->
                    <div class="overlay-panel mask-right">
                        <h1>没有帐号？</h1>
                        <p>立即注册加入我们，和我们一起开始旅程吧</p>
                        <button class="ghost" id="signUp">注册</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
