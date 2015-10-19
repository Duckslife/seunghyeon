package com.one.controller;

import java.nio.charset.Charset;


import javax.servlet.Filter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.filter.CharacterEncodingFilter;

import com.one.mybatis.AppConfig;
import com.one.mybatis.Board;
import com.one.mybatis.Village;
import com.one.mybatis.mapper.BoardMapper;
import com.one.mybatis.mapper.VillageMapper;

// MainController :
@Controller
public class MainController {
	@RequestMapping(method=RequestMethod.GET, value={"/","/index.html"})
	public String index(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		model.addAttribute("title", "4차 프로젝트 블로그 메인");
		model.addAttribute("menu", "index");    
	 	System.out.println("시스템 가동 준비완료!");
		
		return "/ctrl/main/index";
		
		
	}
	@RequestMapping(method=RequestMethod.GET, value={"/blog.html"})
	public String blog(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		model.addAttribute("title", "4차 프로젝트 블로그");
		model.addAttribute("menu", "blog");
		System.out.println("블로그 인덱스 준비완료!");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
		
		return "/ctrl/main/blog";
		
		
	}
	
	@RequestMapping(method=RequestMethod.GET, value={"/contact.html"})
	public String contact(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		model.addAttribute("title", "4차 프로젝트 블로그 컨텍");
		model.addAttribute("menu", "contact");
		System.out.println("블로그 인덱스 준비완료!");
		
		return "/ctrl/main/contact";
		
		
	}
	@RequestMapping(method=RequestMethod.GET, value={"/project-example.html"})
	public String login(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		model.addAttribute("title", "4차 프로젝트 블로그 샘플");
		model.addAttribute("menu", "project-example");
		System.out.println("블로그 인덱스 준비완료!");
		
		return "/ctrl/main/project-example";
		
		
	}
	@RequestMapping(method=RequestMethod.GET, value={"/insert"})
	public String insert(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
 	    ctx.register(AppConfig.class);
 	    ctx.refresh();
 	    VillageMapper mapper = ctx.getBean(VillageMapper.class);	
 	    Village village = new Village();
 	    village.setVid(4);
 	    village.setVillageName("정승현");
 	    village.setDistrict("인천");
 	    mapper.insertVillage(village);
        System.out.println("---Data saved---");
       
        model.addAttribute("title", "형이 알아봐 줄게.. 넌 숨만 쉬어.");
		System.out.println("시스템 가동 준비완료!");
		return "/ctrl/main/insert";
		
		
	}
	
	@RequestMapping(method=RequestMethod.GET, value={"/review.html"})
	public String review(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		
       
        model.addAttribute("title", "형이 알아봐 줄게.. 넌 숨만 쉬어.");
		System.out.println("리뷰 뷰화면");
		return "/ctrl/main/board/review";
		
		
	}
	
	@RequestMapping(method=RequestMethod.GET, value={"/write.html"})
	public String write(HttpServletRequest request , HttpServletResponse respone , Model model) throws Exception {
		
		
       
        model.addAttribute("title", "형이 알아봐 줄게.. 넌 숨만 쉬어.");
		System.out.println("작성폼으로 이동!");
		return "/ctrl/main/board/write";
		
		
	}
	

	//한글 철벽방어
    @Bean
    public HttpMessageConverter<String> responseBodyConverter() {
        return new StringHttpMessageConverter(Charset.forName("UTF-8"));
    }
 
    @Bean
    public Filter characterEncodingFilter() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return characterEncodingFilter;
    }
}
