package com.surabhi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.surabhi.domain.Pal;
import com.surabhi.service.ExactMatchGenerator;
@Controller
public class SurabhiController {
	@Autowired
	ExactMatchGenerator exactMatchGenerator;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getIndexPage() {
		ModelAndView view = new ModelAndView("homePage", "command", new Pal());
		return view;
	}

	@RequestMapping(value = "/addPal", method = RequestMethod.GET)
	public ModelAndView addPal(@ModelAttribute Pal pal, ModelMap model) {
		exactMatchGenerator.generateExactmatch(pal);
		model.addAttribute("name", pal.getName());
		model.addAttribute("gender", pal.getGender());
		/*System.out.println("username: " + pal.getName());
		System.out.println("standard: " + pal.getStandard());
		System.out.println("gender: " + pal.getGender());
		System.out.println("subject: " + pal.getLikingSubject());
		System.out.println("sport: " + pal.getLikingSport());
		System.out.println("other interest: " + pal.getOtherInterest());*/
		return new ModelAndView("displayBeneficiery");
	}
	
	/*
	 * @RequestMapping(value = "/home", method = RequestMethod.GET) public
	 * ModelAndView getI() {
	 * 
	 * return getIndexPage(); }
	 */
}