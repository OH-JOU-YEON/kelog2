package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.UserDTO;
import com.spring.persistence.UserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
	
	private final UserMapper mapper;
	
	@Override
	public UserDTO login(UserDTO member) {
		UserDTO user = mapper.login(member);
		log.info("UserServiceImpl login: " + user);
		return  user;
	}

	@Override
	public UserDTO selectUser(String email) {
		UserDTO user = mapper.selectMember(email);
		log.info("UserServiceImpl user: " + user);
		return user;
	}
	@Override
	public void created(UserDTO dto) {
		log.info("userServiceImpl created "+dto);
		mapper.insert(dto);
		
	}

	@Override
	public List<UserDTO> listAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public UserDTO read(Integer key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(UserDTO dto) {
		return mapper.update(dto);
	}

	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
		
	}


	@Override
	public UserDTO select(int uno) {
		UserDTO user = mapper.select(uno);
		log.info("MemberService user: " + user);
		return user;
	}

}
