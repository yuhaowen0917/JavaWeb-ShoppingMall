<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2022/1/6
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <title>Title</title>
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
                <td width="100" goods_id="title">商品编号</td>
                <td width="100" goods_name="title">商品名称</td>
                <td width="100" category="title">商品类别</td>
                <td width="100" unitprice="title">单价</td>
                <td width="100" stock="title">库存数量</td>
                <td  details="title">详细介绍</td>
                <td width="100" add_time="title">商品上架时间</td>
                <td width="100" change_time="title">数据最近更新时间</td>

            </tr>
            <%
                ResultSet rs = null;
                String sql = "SELECT * FROM goods;";  //查询语句
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                out.print("查询结果：");
                out.print("<br/>");
                while (rs.next()) {%>
            <tr>
                <td width="100" ><%=rs.getString("goods_id") %></td>
                <td width="100" ><%=rs.getString("goods_name") %></td>
                <td width="100"><%=rs.getString("category") %></td>
                <td width="100"><%=rs.getString("unitprice") %></td>
                <td width="100"><%=rs.getString("stock") %></td>

                <td ><%=rs.getString("details") %></td>
                <td width="100"><%=rs.getString("add_time") %></td>
                <td width="100"><%=rs.getString("change_time") %></td>

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
