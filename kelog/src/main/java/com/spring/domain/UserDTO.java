package com.spring.domain;


import lombok.Data;

@Data
public class UserDTO {
 private int uno;
 private String email;
 private String profileImg;
 private Role role;
 private Activity activity;
 
 public enum Role {
	    admin, user
	}
 public enum Activity {
	 active, inactive
 }
public UserDTO(String email, String profileImg) {
	super();
	this.email = email;
	this.profileImg = profileImg;
}






}
