package com.spring.domain;

import lombok.Data;

@Data 
public class BlogDTO {
	
	private int blogNo; 
	
	private int uno; 
	
	private String blogName; 
	
	public BlogDTO(int uno, String blogName) {
		
		this.uno = uno; 
		
		this.blogName = blogName; 
	}
	

}
