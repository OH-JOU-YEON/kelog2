package com.spring.service;

import org.springframework.stereotype.Service;

import com.spring.persistence.NickNameMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class NickNameServiceImpl implements NickNameService {

	private final NickNameMapper mapper;
	
	@Override
	public void created(String nickName, int uno) {
		mapper.insert(nickName, uno);
	}

	@Override
	public String selectNickName(int uno) {
		String nN = mapper.selectNickName(uno);
		log.info("NickName nN: "+nN);
		return nN;
	}

	@Override
	public int modify(String nickName,int uno) {
		return mapper.update(nickName, uno);
	}

}
