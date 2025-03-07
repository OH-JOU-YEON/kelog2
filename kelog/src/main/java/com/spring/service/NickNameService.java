package com.spring.service;


public interface NickNameService {
	public void created(String nickName,int uno);

	public String selectNickName(int uno);

	public int modify(String nickName,int uno);
}
