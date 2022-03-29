package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
public class MapController {

	final String path = "/map/";
	
	@GetMapping("/mainMap")
	public String mainMap() {
		
		return path + "mainMap";
	}
}
