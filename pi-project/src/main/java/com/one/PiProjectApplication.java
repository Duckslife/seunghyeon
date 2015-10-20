package com.one;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class PiProjectApplication {

    public static void main(String[] args) {
        //SpringApplication.run(PiProjectApplication.class, args);
        ConfigurableApplicationContext context = SpringApplication.run(PiProjectApplication.class, args);
        //BoardDao boardRepository = context.getBean(BoardDao.class);
        //boardRepository.save(new Board("")); 생성자를 이용한 데이터 미리입력 가능을 위한 주석

        
    }
}
