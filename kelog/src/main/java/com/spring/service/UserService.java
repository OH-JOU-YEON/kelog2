package com.spring.service;

import java.util.List;

import com.spring.domain.UserDTO;


public interface UserService extends GenericService<UserDTO, Integer> {

	public UserDTO login(UserDTO dto);

	public UserDTO selectUser(String email);
	
	public UserDTO select(int uno);

	public List<UserDTO> listAll();

	public int usermodify(UserDTO member);

	public int isNicknameTaken(String nickName);

	public List<UserDTO> findUsersByNickName(String keyword);

	public List<UserDTO> findUsersByEmail(String keyword);

}