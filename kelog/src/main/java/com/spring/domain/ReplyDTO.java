package com.spring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class ReplyDTO {
	private int replyNo;
	private int blogPostNo;
	private int tipBoardNo;
	private String nickName;
	private String email;
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd a hh:mm:ss")
	private Date regDate;
	
	
	
}
