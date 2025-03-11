package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.UserDTO;


public interface UserMapper {
	public void insert(UserDTO dto);
	// 로그인 기능
	@Select("SELECT * FROM user WHERE email = #{email} ")
	public UserDTO login(UserDTO user);
	
	@Select("SELECT * FROM user WHERE email = #{email} ")
	public UserDTO selectMember(String email);
	
	@Delete("DELETE FROM user WHERE uno = #{uno}")
	public int delete(Integer uno);
	
	@Select("SELECT * FROM user WHERE uno = #{uno}")
	public UserDTO select(int uno);
	
	public int update(UserDTO dto);
	
	@Select("SELECT * FROM user")
	public List<UserDTO> listAll();
	
	public int usermodify(UserDTO member);
	
	public int findByNickname(String nickName);
}
