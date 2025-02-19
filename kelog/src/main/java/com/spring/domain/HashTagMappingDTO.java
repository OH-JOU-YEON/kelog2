package com.spring.domain;

import lombok.Data;

@Data 
public class HashTagMappingDTO {
	
	private int indexNo; 
	
	private int hashNo;
	
	private int blogNo;
	
	private int travelNo;
	
	private int tipNo; 
	

	//생성 시 매핑하는 자료의 타입을 명시한다. 

	
	public HashTagMappingDTO(int hashNo, int key, String type) {
		
		this.hashNo = hashNo; 
		
		switch(type) {
		
		case "blogNo":
			this.blogNo = key;
			break;
		case "travelNo":
			this.travelNo = key; 
			break; 
		
		case "tipNo" :
			this.tipNo = key; 
			break; 
		}
		
	}
}
