package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.HashTagDTO;
import com.spring.persistence.HashTagMapper;
import com.spring.persistence.HashTagMappingMapper;

@Service 
public class HashTagService {
	
	@Autowired 
	HashTagMapper hashTagMapper; 
	
	
	
	
	
	
	public HashTagDTO saveTag(String title) {
		
		HashTagDTO hashTagDTO;
		
		if(hashTagMapper.findHashTagByHashName(title) != null) {
			hashTagDTO = hashTagMapper.findHashTagByHashName(title); 
		} else {
			
			hashTagDTO = new HashTagDTO(title); 
			
		}
		
		return hashTagDTO; 
	}
	

	
	public String deleteTag(int hashNo) {
		
		
		String deletedName; 
		
		if(hashTagMapper.findHashTagByHashNo(hashNo) != null) {
			deletedName = hashTagMapper.findHashTagByHashNo(hashNo).getHashName(); 
			
			hashTagMapper.delete(hashNo); 
			
			return deletedName; 
		}else {
			
			return "삭제하려는 객체가 처음부터 없었습니다."; 
		}
	}
	
	
	

}
