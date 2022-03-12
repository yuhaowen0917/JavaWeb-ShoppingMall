package User;

public class user {
    private int user_id;
    private String username;
    private String password;
    public int getId() {
        return user_id;
    }
    public void setId(int id) {

        this.user_id = user_id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "User [user_id=" + user_id + ", username=" + username + ", password=" + password + "]";
    }

    public user(int id, String username, String password, String address) {
        super();
        this.user_id = user_id;
        this.username = username;
    }

    public user() {
        super();
    }
}
