package com.one.controller;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.one.dao.BoardDao;
import com.one.models.Board;

	
	@Controller
	@RequestMapping("/product")
	public class BoardContoller {
		
		@Autowired
		private BoardDao boardDao;
		
		@RequestMapping("/write")
		public String write(Board board, Model model) {
			board.setBoard_no("1");
			board.setUser("jshsakura@naver.com");
			board.setTitle("제목입력 테스트입니다.");
			board.setContent("테스트라니깐");
			board.setImg("");
			board.setVideo_url("");
			board.setIp("");
			board.setReg_date(new Date());
			board.setMod_date(new Date());
			
			model.addAttribute("menu", "product");
			model.addAttribute("title", "4차 프로젝트 블로그 상품페이지");
			return "redirect:/post/" + boardDao.save(board).getNo();
		}

		@RequestMapping("/list")
		public String list(Model model,  @PageableDefault(sort = { "no" }, direction = Direction.DESC, size = 2) Pageable pageable) {
			System.out.println("리스트왔음");
			Page<Board> boardlist = boardDao.findAll(pageable);
			
			model.addAttribute("postpage", boardlist);
			model.addAttribute("menu", "product");
			model.addAttribute("title", "4차 프로젝트 블로그 상품페이지");
			return "/ctrl/main/index";
		}

		@RequestMapping("/{no}")
		public String view(Model model,@PathVariable long no,Session session) {
			
			
			Board board = boardDao.findOne(no);
			List<Board> boardList = boardDao.findAll();
			
			//Query query = session.createQuery("select board.no from board");
			//Integer boardlist = query.getMaxResults();
			
			model.addAttribute("maxsize", boardList.size());
			model.addAttribute("board", board);
			model.addAttribute("menu", "product");
			model.addAttribute("title", board.getTitle());
			return "/ctrl/main/post";
		}
		@RequestMapping("")
		public String no_number(Model model) {
			
			Board board = boardDao.findOne((long) 1);
			List<Board> boardList = boardDao.findAll();
			
			model.addAttribute("maxsize", boardList.size());
			model.addAttribute("board", board);
			model.addAttribute("no", 1);
			model.addAttribute("menu", "product");
			model.addAttribute("title", board.getTitle());
			return "/ctrl/main/post";
		}
		
		
	}
	
