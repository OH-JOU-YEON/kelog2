package com.spring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class TravelPostDTO {
	
	private int travelBoardNo;
	private String title;
	private String content;
	private String nickName;
	private String email;
	private String thumbnail;
	@DateTimeFormat(pattern = "yyyy-MM-dd a hh:mm:ss")
	private Date regDate;
	private String tag;
	private int likeCnt = 0;
	private int dislikeCnt = 0;
}
