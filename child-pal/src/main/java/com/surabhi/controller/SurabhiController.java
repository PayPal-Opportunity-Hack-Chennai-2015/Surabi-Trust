package com.surabhi.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.surabhi.domain.Beneficiary;
import com.surabhi.domain.Pal;
import com.surabhi.domain.PalUI;
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

	@RequestMapping(value = "/addPal", method = RequestMethod.POST)
	public ModelAndView addPal(@ModelAttribute PalUI palModel, ModelMap model) {
		String[] subjects=palModel.getLikingSubject().split(",");
		String[] sports=palModel.getLikingSport().split(",");
		String[] interests=palModel.getOtherInterest().split(",");
		Pal pal=mapUIModeltoDomainModel(palModel,sports,subjects,interests);
		Queue<Beneficiary> exactMatch = exactMatchGenerator.generateExactmatch(pal);
		Iterator<Beneficiary> itr = exactMatch.iterator();
		List<PalUI> benefeciaries=new ArrayList<>();
	    while(itr.hasNext()){
	    	/*PalUI pal1 =new PalUI();
	    	pal1.setName();
	    	pal1.setOtherInterest("gghg");
	    	benefeciaries.add(pal1);
	    	itr.next();*/
	    }
	    
		/*System.out.println("username: " + pal.getName());
		System.out.println("standard: " + pal.getStandard());
		System.out.println("gender: " + pal.getGender());
		System.out.println("subject: " + pal.getLikingSubject());
		System.out.println("sport: " + pal.getLikingSport());
		System.out.println("other interest: " + pal.getOtherInterest());*/
	    model.addAttribute("benefeciaries",benefeciaries);
		return new ModelAndView("displayBeneficiery");
	}

	private Pal mapUIModeltoDomainModel(PalUI palModel, String[] sports, String[] subjects, String[] interests) {
		Pal pal= new Pal();
		pal.setGender(palModel.getGender());
		pal.setName(palModel.getName());
		pal.setStandard(palModel.getStandard());
		pal.setLikingSport(sports);
		pal.setLikingSubject(subjects);
		pal.setOtherInterest(interests);
		return pal;
		
	}
	
	/*
	 * @RequestMapping(value = "/home", method = RequestMethod.GET) public
	 * ModelAndView getI() {
	 * 
	 * return getIndexPage(); }
	 */
}