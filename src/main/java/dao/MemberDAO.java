package dao;

import util.ConnectionManager;
import vo.LoginVO;
import vo.StudentVO;

import java.sql.*;
import java.sql.Connection;
import java.util.ArrayList;

public class MemberDAO {

    public LoginVO selectMemberInfo(String id, String pwd) throws SQLException {
        //boolean flag = false;
        //ArrayList<LoginVO> LoginMember = new ArrayList<LoginVO>();
        LoginVO vo = null;

        // 컨낵션 정보
        Connection con = ConnectionManager.getConnetion();

        // 쿼리부분     아이디, 비밀번호, 이름
        String sql = "SELECT std_no, total, email  FROM gisa3 WHERE std_no = ? and total = ?";

        // 특정한 쿼리만 통과 하는 전용 통로 작성.
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1,Integer.parseInt(id));
        pstmt.setInt(2,Integer.parseInt(pwd));
        ResultSet rs = pstmt.executeQuery();

        // 쿼리 처리
        if(rs.next()) {
            vo = new LoginVO(rs.getString(1),
                    rs.getString(2),
                    rs.getString(3));
        }

        // 비교 처리
//        for (LoginVO vo2 : LoginMember){
//            if(vo2.getId().equals(id) && vo2.getPwd().equals(pwd)){
//                flag = true;
//            }
//        }

        // 닫기
        ConnectionManager.closeConnection(rs,pstmt,con);
        return vo;
    }

    public  ArrayList<StudentVO> StudentMemberInfo(String mgr, String local) throws SQLException {

        // List
        ArrayList<StudentVO> student = new ArrayList<StudentVO>();

        // 컨낵션 정보
        Connection con = ConnectionManager.getConnetion();

        // 쿼리부분     아이디, 비밀번호, 이름
        String sql = "SELECT std_no, total, email, mgr_code, local_code  FROM gisa3 WHERE mgr_code = ? and local_code = ?";

        // 특정한 쿼리만 통과 하는 전용 통로 작성.
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1,mgr);
        pstmt.setString(2,local);
        ResultSet rs = pstmt.executeQuery();

        // 쿼리 처리
        StudentVO vo = null;
        while(rs.next()) {
            vo = new StudentVO(rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5));
            student.add(vo);
        }

        // 닫기
        ConnectionManager.closeConnection(rs,pstmt,con);

        return student;
    }

}
