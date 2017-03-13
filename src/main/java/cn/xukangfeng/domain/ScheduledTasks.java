package cn.xukangfeng.domain;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by F on 2017/3/12.
 */
@Component
public class ScheduledTasks {

    private static final SimpleDateFormat sdf  = new SimpleDateFormat("HH:mm:ss");

    @Scheduled(fixedRate = 500000)
    public void reportCurrentTime(){
        System.out.println("现在时间：" + sdf.format(new Date()));
    }


}
