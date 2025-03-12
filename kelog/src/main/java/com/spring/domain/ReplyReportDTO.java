package com.spring.domain;

import lombok.Data;

@Data
public class ReplyReportDTO {
	private int reportNo;
	private int blogPostNo;
	private int tipBoardNo;
	private int replyNo;
	private String email;
	private String reportReason;
}
