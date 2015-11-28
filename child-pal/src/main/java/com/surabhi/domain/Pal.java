package com.surabhi.domain;


/**
 * @author Jeya karthika
 * 
 */
public class Pal {
	private String name;
	private String standard;
	private String gender;
	private String likingSubject;
	private String likingSport;
	private String otherInterest;

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getLikingSubject() {
		return likingSubject;
	}

	public void setLikingSubject(String likingSubject) {
		this.likingSubject = likingSubject;
	}

	public String getLikingSport() {
		return likingSport;
	}

	public void setLikingSport(String likingSport) {
		this.likingSport = likingSport;
	}

	public String getOtherInterest() {
		return otherInterest;
	}

	public void setOtherInterest(String otherInterest) {
		this.otherInterest = otherInterest;
	}

}
