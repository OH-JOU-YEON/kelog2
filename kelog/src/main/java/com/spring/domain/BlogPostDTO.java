package com.spring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.spring.domain.DTOS.BlogNoAndNickNameVO;

import lombok.Data;

@Data
public class BlogPostDTO {
	
	private int blogPostNo;
	private int blogNo;
	private String title;
	private String content;
	private String nickName;
	@DateTimeFormat(pattern = "yyyy-MM-dd a hh:mm:ss")
	private Date regDate;
	private String tag;
	private int viewCnt;
	private int likeCnt;
	private int reportCnt;
	
	public BlogPostDTO(BlogNoAndNickNameVO blogNoAndNickName, String title, String content) {
		
		this.blogNo = blogNoAndNickName.getBlogNo(); 
		
		this.nickName = blogNoAndNickName.getNickName(); 
		
		this.title = title; 
		
		this.content = content; 
		
		
		this.viewCnt = 0; 
		
		this.likeCnt = 0; 
		
		this.reportCnt = 0; 
		
		this.regDate = new Date(); 
		
		
	}
	
}
