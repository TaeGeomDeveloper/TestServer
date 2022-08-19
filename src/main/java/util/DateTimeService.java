package util;

import java.util.Date;

public class DateTimeService {

    // 현재 시간을 리턴해주는 메소드
    public String DateTime (){
        Date date = new Date();
        String now = date.toString();

        return now;
    }


}
