package com.spring.domain.DTOS;

import lombok.Getter;

@Getter 
public class BlogNoAndNickNameVO {
	
	private int blogNo; 
	
	private String nickName; 

	
	public BlogNoAndNickNameVO(int blogNo,String nickName) {
		
		this.blogNo = blogNo; 
		
		this.nickName = nickName; 
		
	}
}
