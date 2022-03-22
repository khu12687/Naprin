package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.model.Knowin;
import kr.ac.kopo.model.KnowinImg;
import kr.ac.kopo.service.KnowinService;
import kr.ac.kopo.util.Uploader;

@Controller
@RequestMapping("/knowIn")
public class KnowInController {
	
	@Autowired
	KnowinService service;
	
	@GetMapping("/add")
	public String add(Model model, String keyword) {
		
		model.addAttribute("keyword",keyword);
		
		return "knowIn";
	}
	
	@PostMapping("/add")
	public String add(Knowin item, @RequestParam("knowinImg") List<MultipartFile> knowinImg) {
		
		try {
			Uploader<KnowinImg> uploader = new Uploader<>();
			
			List<KnowinImg> images = uploader.makeList(knowinImg, KnowinImg.class);
			
			item.setImages(images);
			
			service.add(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:../";
	}
}
