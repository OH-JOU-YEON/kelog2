package com.spring.domain;

import lombok.Getter;

@Getter
public class NavAddressDTO {
	
	private int addressNo; 
	
	private String addName; 
	
	private double latitude; 
	
	private double longitude; 
	
	
	public NavAddressDTO(String addName, double latitude, double longitude) {
		
		
		this.addName = addName; 
		
		this.latitude = latitude; 
		
		this.longitude = longitude; 
	}

}
