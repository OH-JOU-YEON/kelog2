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
	
	
	
	
	//동일한 타이틀의 태그가 있는지 검사해본 뒤에 있으면 그거 반환하고 아니면 새로 생성하는 메서드 
	
	public HashTagDTO saveTag(String title) {
		
		HashTagDTO hashTagDTO;
		
		if(hashTagMapper.findHashTagByHashName(title) != null) {
			hashTagDTO = hashTagMapper.findHashTagByHashName(title); 
		} else {
			
			hashTagDTO = new HashTagDTO(title); 
			
		}
		
		return hashTagDTO; 
	}
	
	
	//태그 삭제 메서드 
	
	public String deleteTag(int hashNo) {
		
		
		String deletedName; 
		
		if(hashTagMapper.findHashTagByHashNo(hashNo) != null) {
			deletedName = hashTagMapper.findHashTagByHashNo(hashNo).getHashName(); 
			
			hashTagMapper.delete(hashNo); 
			
			return deletedName; 
		}else {
			
			return "삭제될 값이 처음부터 존재하지 않았습니다"; 
		}
	}
	
	
	

}
