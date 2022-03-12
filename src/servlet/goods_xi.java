package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/shopall")
public class goods_xi extends HttpServlet {
    private static final long serialVersionUID = 7804524886360637172L;
    protected void insert (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String sql="select * from goods";
        try {
            int goods_id = Integer.parseInt(request.getParameter("goods_id"));

            request.setAttribute("goods_id", goods_id);
            request.getRequestDispatcher("phone.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
