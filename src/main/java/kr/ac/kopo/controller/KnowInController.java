package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KnowInController {
	@GetMapping
	public String knowIn(Model model, String keyword) {
		
		model.addAttribute("keyword",keyword);
		
		return "knowIn";
	}
}
