package com.spring.domain.DTOS;

import java.util.List;

import lombok.Getter;

@Getter 
public class BlogPostVO {
	
	private List<Navs> navs; 
	
	private String tag; 
	
	private String title; 
	
	private String content; 

}
