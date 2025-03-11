package com.spring.domain;

import lombok.Data;

@Data
public class ReportDTO {
	private int reportNo;
	private int bolgPostNo;
	private int tipBoardNo;
	private String email;
	private String reportReason;
}
