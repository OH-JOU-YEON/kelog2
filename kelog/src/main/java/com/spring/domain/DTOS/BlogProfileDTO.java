package com.spring.domain.DTOS;

import com.spring.domain.UserDTO;

import lombok.Getter;
import lombok.NoArgsConstructor;
@NoArgsConstructor 
@Getter 
public class BlogProfileDTO {
	
	private String email; 
	
	private String profile; 
	
	
	private boolean mineOrNot; 
	
	
	public BlogProfileDTO(UserDTO userDTO, boolean mineOrNot) {
		
		this.email = userDTO.getEmail(); 
		
		this.profile = userDTO.getProfileImg(); 
		
		this.mineOrNot = mineOrNot; 
	}

}
