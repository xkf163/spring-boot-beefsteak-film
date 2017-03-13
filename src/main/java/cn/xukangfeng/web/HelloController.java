package cn.xukangfeng.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/13.
 */

@Controller
public class HelloController {

    @RequestMapping(value = "/hello")
    public String helloWorld(Map<String,Object> map){

        map.put("toUserName","张丰");
        map.put("message","消息");
        map.put("fromUserName","world");
        map.put("time",new Date());
        return "index";
    }

}
