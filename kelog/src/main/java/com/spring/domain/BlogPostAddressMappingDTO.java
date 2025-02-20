package com.spring.domain;

import lombok.Getter;

@Getter 
public class BlogPostAddressMappingDTO {
	
	int id; 
	
	int blogPostId; 
	
	int addressId; 
	
	
	public BlogPostAddressMappingDTO(int blogPostId, int addressId) {
		
		this.blogPostId = blogPostId;
		
		this.addressId = addressId; 
		
	}

}
