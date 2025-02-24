package com.spring.domain;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class ReplyDTO {
	private int ReplyNo;
	// 블로그 번호, 게시판 번호
	private int Num;
	private String nickName;
	private String content;
	private Timestamp regDate;
}
