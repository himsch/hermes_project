package com.my.hermes.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.hermes.dao.BoardDAO;
import com.my.hermes.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardDAO dao;
	
	// 게시판 이동 및 목록
	@RequestMapping(value = "/board/boardmain", method = RequestMethod.GET)
	public String boardmain(Model model) {
		ArrayList<BoardVO> list = dao.boardList();
		model.addAttribute("list", list);
		return "/board/boardmain";
	}

	
	// 게시판 글 읽기
	@RequestMapping(value = "/board/boardRead", method = RequestMethod.GET)
	public String boardRead() {
		return "/board/boardRead";
	}

	// 글 수정 화면 이동
	@RequestMapping(value = "/board/boardUpdate", method = RequestMethod.GET)
	public String boardUpdate() {
		return "/board/boardUpdate";
	}
	
	// 글쓰기 화면 이동
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.GET)
	public String boardWrite() {
		return "/board/boardWrite";
	}
}
