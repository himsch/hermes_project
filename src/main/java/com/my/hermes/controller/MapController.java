package com.my.hermes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MapController {

	// 로그인 화면 이동
	@RequestMapping(value = "/map/mapmain", method = RequestMethod.GET)
	public String mapmain() {
		return "/map/mapmain";
	}
}
