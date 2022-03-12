<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/5
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>左侧导航栏</title>
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
        <link rel="stylesheet" type="text/css" href="css/page.css" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/icons.min.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body>
        <div class="page" id="app">
            <div class="nav-left" v-show="navLeftFlag" ref="navLeft">
                <div class="LogoName">
                    在线商城后台管理
                </div>
                <div class="navDiv">
                    <div class="navName">导航</div>
                    <div class="nav-list">
                        <ul>
                            <li class="nav-tab a_active waves-effect">
                                <a href="menu/home.html" class="li-a active" target="iframe">
                                    <i class='bx bx-home-smile'></i>
                                    主页
                                </a>
                            </li>
                            <!-- <li class="nav-tab">
                                <a href="#" class="li-a"><i class='bx bx-home-smile'></i> 设备管理</a>
                            </li> -->
                            <li class="nav-tab nav-ul">
                                <a href="javascript:void[0]" class="li-a" target="iframe"><i class='bx bx-layer'></i> 用户管理
                                    <i class='bx bx-chevron-right' style="float: right;"></i></a>
                                <div class="nav-box">
                                    <a href="menu/device/2-1.jsp" class="li-a-a" target="iframe">用户列表</a>
                                </div>
                            </li>
                            <li class="nav-tab nav-ul">
                                <a href="javascript:void[0]" class="li-a"><i class='bx bx-cog'></i> 商品管理
                                    <i class='bx bx-chevron-right' style="float: right;"></i></a>
                                <div class="nav-box">
                                    <a href="menu/device/3-1.jsp" class="li-a-a" target="iframe">商品列表</a>
                                </div>
                            </li>
                            <li class="nav-tab nav-ul">
                                <a href="javascript:void[0]" class="li-a"><i class='bx bx-buildings'></i> 订单管理
                                    <i class='bx bx-chevron-right' style="float: right;"></i></a>
                                <div class="nav-box">
                                    <a href="menu/device/4-1.html" class="li-a-a" target="iframe">所有订单</a>
                                </div>
                                <div class="nav-box">
                                    <a href="menu/device/4-1.html" class="li-a-a" target="iframe">未支付订单</a>
                                </div>
                            </li>
                            <li class="nav-tab nav-ul">
                                <a href="javascript:void[0]" class="li-a"><i class='bx bx-edit'></i> 类别管理
                                    <i class='bx bx-chevron-right' style="float: right;"></i></a>
                                <div class="nav-box">
                                    <a href="menu/device/5-1.html" class="li-a-a" target="iframe">类别管理</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="nav-right" ref="navRight">
                <div class="nav-top">
                    <button type="button" class="btn btn-primary btn-sm hiddenBtn" style="line-height: 10px;" @click="isShowLeft">
                        <i class="bx bx-grid-alt" style="font-size: 16px;"></i>
                    </button>
                    <!-- <button type="button" class="btn btn-primary btn-sm showBtn" style="line-height: 10px; display: none;" onclick="showNavRight">
                        <i class="bx bx-expand" style="font-size: 16px;"></i>
                    </button> -->
                </div>
                <div class="content-page" ref="cPage">
                    <iframe name="iframe" width="100%" height="100%" frameborder="0" src="menu/home.html"></iframe>
                </div>
            </div>
        </div>
        <script src="js/vue.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
            $(function() {
                let navflag = false;
                $('.nav-tab').click(function() {
                    $(this).siblings().each(function() {
                        $(this).removeClass('a_active');
                        // $(this).removeClass('a_active');
                        $(this).find('.nav-box').css('height', '0')
                        //关闭右侧箭头
                        if ($(this).attr('class').indexOf('nav-ul') != -1) {
                            $(this).find('.bx-chevron-right').css('transform', 'rotateZ(0deg)')
                            $(this).find('.bx-chevron-right').css('transition', 'all .5s')
                            $(this).removeClass('nav-show')
                            // $(this).find('div').removeClass('nav-box')
                        }
                    })
                    //当前选中
                    $(this).addClass('a_active')
                    $(this).find('.li-a').addClass('active')
                    // 打开右侧箭头
                    $(this).find('.bx-chevron-right').css('transform', 'rotateZ(90deg)')
                    $(this).find('.bx-chevron-right').css('transition', 'all .5s')
                    $(this).addClass('nav-show')
                    // $(this).find('div').addClass('nav-box')
                })
                /* 二级菜单a点击事件 */
                $(".li-a-a").click(function() {
                    $(".li-a-a").each(function() {
                        $(this).removeClass('active-li-a');
                    })
                    $(this).addClass('active-li-a');
                })

            })
            const vue = new Vue({
                el: '#app',
                data: {
                    navLeftFlag: true
                },
                methods: {
                    isShowLeft() {
                        if (this.navLeftFlag ) {
                            this.$refs.navRight.style.paddingLeft = '0px'
                            this.$refs.cPage.style.left = '0px';
                            this.navLeftFlag = false;
                            // this.$refs.navLeft.style.width = '0px';
                            // setTimeout(()=>{
                            // 	this.navLeftFlag = false;
                            // },200)
                        } else {
                            this.$refs.navRight.style.paddingLeft = '240px';
                            this.$refs.cPage.style.left = '240px';
                            this.navLeftFlag = true;
                            // this.$refs.navLeft.style.width = '240px';
                            // setTimeout(()=>{
                            // 	this.navLeftFlag = true;
                            // },200)
                        }
                    }
                }
            })
        </script>
    </body>
</html>
