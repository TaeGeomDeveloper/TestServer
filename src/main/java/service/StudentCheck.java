package service;

import dao.MemberDAO;
import vo.LoginVO;
import vo.StudentVO;

import java.sql.SQLException;
import java.util.ArrayList;

public class StudentCheck {

    public ArrayList<StudentVO> getMember(String mgr, String local) {
        ArrayList<StudentVO> list = new ArrayList<StudentVO>();

        MemberDAO dao = new MemberDAO();
        try {
            list = dao.StudentMemberInfo(mgr, local);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
