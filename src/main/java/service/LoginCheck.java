package service;
// 메소드 작성
// id, password 파라메터로 받아서 boolean 값을 리턴하는 로직
// 메소드명은 isMember

import dao.MemberDAO;
import vo.LoginVO;

import java.sql.SQLException;

public class LoginCheck {

    public boolean isMember(String id, String pwd){
        boolean isLogin = false;

//        if(id.equals("user01") && pwd.equals("1234")){
//            isLogin = true;
//        }

        MemberDAO dao = new MemberDAO();
        //isLogin = dao.selectMember(id, pwd);

        return isLogin;
    }

    public LoginVO getMember(String id, String pwd) {
        LoginVO vo = null;

        MemberDAO dao = new MemberDAO();
        try {
          vo = dao.selectMemberInfo(id, pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vo;
    }

}
