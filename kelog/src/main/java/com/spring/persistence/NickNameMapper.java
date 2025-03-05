package com.spring.persistence;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface NickNameMapper {

	public void insert(String nickName, int uno);
	
	@Select("SELECT nickName FROM nicktable WHERE uno = #{uno}")
	public String selectNickName(int uno);

	public int update(String nickName, int uno);

}
