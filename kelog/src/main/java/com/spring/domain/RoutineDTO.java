package com.spring.domain;

import java.sql.Date;

import lombok.Data;
@Data
public class RoutineDTO {
	
	private int routineNo;
    private String email;
    private String content;
    private Date eventDate;
    
}
