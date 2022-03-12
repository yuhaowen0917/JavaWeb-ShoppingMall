package shop_servlet;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Register {
    public Integer register(String username, String user_id, String password, String email,String birth,String phone,String address) {
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/shop?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false&allowPublicKeyRetrieval=true",
                    "root","123456");
            stmt = conn.createStatement();
            String date = getCurDatetiment();
            String sql = "insert into user(username, user_id, password, email, birth, phone, address, creationTime)value('"
                    + username +"','"+ user_id +"','"+ password +"','"+ email +"','"+ birth +"','"+ phone +"','"+
                    address +"','"+ date+"') ";

            Integer rtn = stmt.executeUpdate(sql);
            System.out.println(conn);
            return rtn;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // TODO 自动生成的方法存根
        return 0;
    }

    private String getCurDatetiment() {
        // TODO 自动生成的方法存根
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(new Date());
    }

    public boolean login(String user_id, String password) {
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/shop?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false&allowPublicKeyRetrieval=true",
                    "root","123456");
            stmt = conn.createStatement();

            String sql = "select * from user where user_id='"+ user_id +"' and password='"+ password +"'";
            ResultSet rs = stmt.executeQuery(sql);
            boolean isLogin = false;
            if(rs.next()) {
                isLogin = true;
            }
            return isLogin;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // TODO 自动生成的方法存
        return false;
    }
}
