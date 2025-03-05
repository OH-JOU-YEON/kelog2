package com.spring.domain;

import lombok.Data;

@Data
public class NickNameDTO {
	private String nickName;
	private int uno;
	
	public NickNameDTO(String nickName, int uno) {
		this.nickName = nickName;
		this.uno = uno;
	}

	
}
