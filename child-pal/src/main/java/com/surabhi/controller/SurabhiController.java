package com.surabhi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.surabhi.domain.Pal;

@Controller
public class SurabhiController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getIndexPage() {
		ModelAndView view = new ModelAndView("homePage", "command", new Pal());
		return view;
	}

	@RequestMapping(value = "/addPal", method = RequestMethod.POST)
	public ModelAndView addPal(@ModelAttribute Pal pal, ModelMap model) {

		// data received from PAL
		System.out.println("username: " + pal.getName());
		System.out.println("standard: " + pal.getStandard());
		System.out.println("gender: " + pal.getGender());
		System.out.println("subject: " + pal.getLikingSubject());
		System.out.println("sport: " + pal.getLikingSport());
		System.out.println("other interest: " + pal.getOtherInterest());

		// List of beneficiaries retrieved from db
		List<Pal> benefeciaries = new ArrayList<>();
		Pal pal1 = new Pal();
		Pal pal2 = new Pal();
		Pal pal3 = new Pal();
		pal1.setName("qwe");
		pal2.setName("iio");
		pal3.setName("sjdh");
		benefeciaries.add(pal1);
		benefeciaries.add(pal2);
		benefeciaries.add(pal3);
		model.addAttribute("benefeciaries", benefeciaries);

		return new ModelAndView("displayBeneficiery");
	}

	@RequestMapping(value = "/connectBeneficiary", method = RequestMethod.POST)
	public ModelAndView connectBeneficiary(
			@RequestParam String beneficiaryIndex, ModelMap model) {
		System.out.println("beneficiaryIndex: " + beneficiaryIndex);
		return new ModelAndView("ThankYou");
	}
	/*
	 * @RequestMapping(value = "/home", method = RequestMethod.GET) public
	 * ModelAndView getI() {
	 * 
	 * return getIndexPage(); }
	 */
}