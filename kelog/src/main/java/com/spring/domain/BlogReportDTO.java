package com.spring.domain;

import lombok.Data;
@Data
public class BlogReportDTO {
	private int reportNo;
	private int blogPostNo;
	private String email;
	private String reportReason;
}
