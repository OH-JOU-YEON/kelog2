package com.spring.domain;


import lombok.Data;

@Data
public class UserDTO {
 private int uno;
 private String email;
 private String nickName;
 private String profileImg;
 private Role role;
 private Activity activity;
 
 public enum Role {
	    admin, user
	}
 public enum Activity {
	 Active, Inactive
 }
public UserDTO(String email, String nickName, String profileImg) {
	super();
	this.email = email;
	this.nickName = nickName;
	this.profileImg = profileImg;
}






}
