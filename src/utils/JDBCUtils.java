package utils;

import java.sql.*;
import java.util.Properties;

/**
 * @author ����
 */
public class JDBCUtils {
    private static String drivername;
    private static String url;
    private static String username;
    private static String password;
    private static Properties pro = new Properties();
    static {
        try{

            pro.load(JDBCUtils.class.getClassLoader().getResourceAsStream("jdbc.properties"));
            drivername = pro.getProperty("m_driver");
            url = pro.getProperty("m_url");
            username = pro.getProperty("m_username");
            password = pro.getProperty("m_password");
            Class.forName(drivername);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static Connection getConnection() throws SQLException {
        Connection conn = DriverManager.getConnection(url,username,password);
        return conn;
    }
    public static void closeQuietly(Connection conn) throws SQLException {
        if(conn!=null){
            conn.close();
        }
    }
    public static void closeQuietly(Statement st) throws SQLException {
        st.close();
    }
    public static void closeQuietly(ResultSet rs) throws SQLException {
        rs.close();
    }
    public static void closeQuietly(Statement st,Connection conn) throws SQLException {
        closeQuietly(st);
        closeQuietly(conn);
    }


    
}
