package controller;

import beans.Good;
import utils.JDBCUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import service.UserService2;


@WebServlet("/detail.do")
public class DetailController extends HttpServlet{

    private static final long serialVersionUID = 7804524886360637172L;
    public DetailController() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");

            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            //查询商品
            String sql="SELECT * FROM goods WHERE goods_id=?";

            Connection connection= JDBCUtils.getConnection();
            PreparedStatement stmt =  connection.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            Good good=new Good();

            while (rs.next()) {
                good.setGoods_id(rs.getString("goods_id"));
                good.setGoods_name(rs.getString("goods_name"));
                good.setUnitprice(rs.getString("unitprice"));
                good.setDetails(rs.getString("details"));
                good.setPic(rs.getString("photo"));


            }
            connection.close();

            request.getSession().setAttribute("good", good);
            response.sendRedirect("phone.jsp");


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}