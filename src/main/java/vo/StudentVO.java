package vo;

public class StudentVO {

    private String id;
    private String pwd;
    private String name;
    private String mgr_code;
    private String local_code;

    // 생성자
    public StudentVO (String id, String pwd, String name, String mgr_code, String local_code){
        this.id = id;
        this.pwd = pwd;
        this.name = name;
        this.mgr_code = mgr_code;
        this.local_code = local_code;
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

    public String getMgr_code() {
        return mgr_code;
    }

    public void setMgr_code(String mgr_code) {
        this.mgr_code = mgr_code;
    }

    public String getLocal_code() {
        return local_code;
    }

    public void setLocal_code(String local_code) {
        this.local_code = local_code;
    }
}
