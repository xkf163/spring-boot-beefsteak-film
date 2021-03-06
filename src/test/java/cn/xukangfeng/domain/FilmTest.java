package cn.xukangfeng.domain;

import cn.xukangfeng.SpringbootFilmApplication;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2017/3/13.
 */
@RunWith(SpringJUnit4ClassRunner.class) // SpringJUnit支持，由此引入Spring-Test框架支持！
@SpringBootTest(classes = SpringbootFilmApplication.class) // 指定我们SpringBoot工程的Application启动类
@WebAppConfiguration // 由于是Web项目，Junit需要模拟ServletContext，因此我们需要给我们的测试类加上@WebAppConfiguration。
public class FilmTest {

    @Autowired
    private FilmRepository filmRepository;

    @Autowired
    private HumanRepository humanRepository;

    @Before
    public void setUp() throws Exception {

    }

    @After
    public void tearDown() throws Exception {

    }


    @Test
    public void create(){
        for (int j = 0; j < 200; j++) {
            Film f = new Film();
            f.setName("西游记"+j);
            f.setYear((short) (1990+j));
            f.setCountry("中国大陆"+j);
            f.setGenre("科幻");

            Human h = new Human();
            h.setName("六小龄童"+j);
            h.setBirthPlace("中国"+j);

            humanRepository.save(h);


            Set<Human> s = new HashSet<>();
            s.add(h);
            f.setDirectors(s);
            filmRepository.save(f);

        }

    }


}