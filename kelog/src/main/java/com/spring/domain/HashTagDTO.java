package com.spring.domain;

import lombok.Data;

@Data
public class HashTagDTO {

	private int hasNo; 
	
	private String hashName; 
	
	
	
	public HashTagDTO(String title) {
		
		this.hashName = title; 
	}
}
