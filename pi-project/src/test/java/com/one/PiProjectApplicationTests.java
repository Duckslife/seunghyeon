package com.one;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.web.WebAppConfiguration;

import com.one.PiProjectApplication;

import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = PiProjectApplication.class)
@WebAppConfiguration
public class PiProjectApplicationTests {

	@Test
	public void contextLoads() {
	}

}
