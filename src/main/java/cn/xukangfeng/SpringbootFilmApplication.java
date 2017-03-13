package cn.xukangfeng;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class SpringbootFilmApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootFilmApplication.class, args);
	}
}
