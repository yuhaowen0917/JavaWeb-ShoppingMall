<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/5
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>  <%--导入java.sql包--%>
<html>
<head>
    <title >从MySQL数据库中读出student表</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(
                "jdbc:mysql://127.0.0.1:3306/shop?characterEncoding=utf-8&serverTimezone=Asia/Shanghai&useSSL=false",
                "root","123456");
        stmt = conn.createStatement();

        if(conn != null){
            out.print("数据库连接成功！");
            out.print("<br />");
%>
<table border="2">
    <tr>
        <td width="100" user_id="title">账号</td>
        <td width="100" username="title">用户名</td>
        <td width="100" password="title">密码</td>
        <td width="100" birth="title">出生日期</td>
        <td width="100" phone="title">联系电话</td>
        <td width="100" email="title">电子邮箱</td>
        <td width="100" address="title">收货地址</td>
        <td width="100" creationTime="title">用户注册时间</td>

    </tr>
    <%
        ResultSet rs = null;
        String sql = "SELECT * FROM user;";  //查询语句
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        out.print("查询结果：");
        out.print("<br/>");
        while (rs.next()) {%>
    <tr>
        <td width="100" ><%=rs.getString("user_id") %></td>
        <td width="100" ><%=rs.getString("username") %></td>
        <td width="100"><%=rs.getString("password") %></td>
        <td width="100"><%=rs.getString("birth") %></td>
        <td width="100"><%=rs.getString("phone") %></td>
        <td width="100"><%=rs.getString("email") %></td>
        <td width="100"><%=rs.getString("address") %></td>
        <td width="100"><%=rs.getString("creationTime") %></td>

    </tr>
    <%
                }
            }else{
                out.print("连接失败！");
            }
        }catch (Exception e) {
            //e.printStackTrace();
            out.print("数据库连接异常！");
        }
    %>
</table>
</body>
</html>


