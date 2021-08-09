package com.duttech.dojoSurveyCore;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class dojoController {
	
	@RequestMapping("/")
	
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value = "/formProcess", method = RequestMethod.POST)
	public String formProcess(HttpSession session, @RequestParam(value = "name") String name, 
			@RequestParam(value = "location") String location, 
			@RequestParam(value = "language") String language,
			@RequestParam(value = "comment") String comment, Model model) {
		
		session.setAttribute("name", name);
		model.addAttribute("name", name);

		session.setAttribute("location", location);
		model.addAttribute("location", location);

		session.setAttribute("language", language);
		model.addAttribute("language",language);
		
		session.setAttribute("comment", comment);
		model.addAttribute("comment", comment);

		if(language.equals("Java")) {
			return "redirect:/javaLang";
		}
		else {
			return "redirect:/result";
		}
		
	}
	
	@RequestMapping("/result")
	public String result() {
		return "result.jsp";
	}
	
	@RequestMapping("/javaLang")
	public String javaLang() {
		return "java.jsp";
	}
	
}
		
		

		
		
		

