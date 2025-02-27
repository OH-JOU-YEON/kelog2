package com.spring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class TipPostDTO {
	private int tipBoardNo;
	private String nickName;
	private String title;
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd a hh:mm:ss")
	private Date regDate;
	private int likeCnt;
	private String tag;
	private int reportCnt;
	
	
	public TipPostDTO(String nickName, String title, String content) {
		super();
		this.nickName = nickName;
		this.title = title;
		this.content = content;
	}
	
	
	
	
}
