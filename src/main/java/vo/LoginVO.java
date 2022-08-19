package vo;

public class LoginVO {
    private String id;
    private String pwd;
    private String name;

    // 생성자
    public LoginVO(String id, String pwd, String name){
        this.id = id;
        this.pwd = pwd;
        this.name = name;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
