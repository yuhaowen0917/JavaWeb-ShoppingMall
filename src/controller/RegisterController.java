package controller;

import shop_servlet.Register;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//import service.UserService2;


@WebServlet("/register.do")
public class RegisterController extends HttpServlet{

    private static final long serialVersionUID = 7804524886360637172L;
    public RegisterController() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String username = request.getParameter("username");
            String user_id = request.getParameter("user_id");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String birth = request.getParameter("birth");
            String phone = request.getParameter("phone");

            String address = request.getParameter("address");



            Register userService = new  Register();
            if(userService.register(username, user_id, password, email, birth, phone, address) > 0) {
                response.getWriter().print("register success!");
            }else {
                response.getWriter().print("register false!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}