package com.spring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class TipReplyDTO {
	private int tipReplyNo;
	private int tipBoardNo;
	private String nickName;
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd a hh:mm:ss")
	private Date regDate;
	
	
	
}
