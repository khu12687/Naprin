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
import kr.ac.kopo.model.ProductImage;
import kr.ac.kopo.service.KnowinService;
import kr.ac.kopo.smartshop.util.Uploader;

@Controller
@RequestMapping("/knowIn")
public class KnowInController {
	
	@Autowired
	KnowinService service;
	
	@GetMapping("/add")
	public String knowIn(Model model, String keyword) {
		
		model.addAttribute("keyword",keyword);
		
		return "knowIn";
	}
	
	@PostMapping("/add")
	public String add(Knowin item, @RequestParam("productImage") List<MultipartFile> productImage) {
		System.out.println(item.getHit());
		System.out.println(item.getTitle());
		System.out.println(item.getContent());
		System.out.println(item.getImages());
		try {
			Uploader<ProductImage> uploader = new Uploader<>();
			
			List<ProductImage> images = uploader.makeList(productImage, ProductImage.class);
			
			item.setImages(images);
			
			service.update(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:../";
	}
}
