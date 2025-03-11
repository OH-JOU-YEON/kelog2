package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.HashTagDTO;
import com.spring.persistence.HashTagMapper;

@Service 
public class HashTagService {
	
	@Autowired 
	HashTagMapper hashTagMapper; 
	
	@Autowired 
	HashTagMappingService hashTagMappingService; 
	
	
	
	
	
	
	public HashTagDTO saveTag(String title) {
		
		HashTagDTO hashTagDTO;
		
		if(hashTagMapper.findHashTagByHashName(title) != null) {
			hashTagDTO = hashTagMapper.findHashTagByHashName(title); 
		} else {
			
			hashTagDTO = new HashTagDTO(title); 
			
		}
		
		return hashTagDTO; 
	}
	
	//문자열 받아다 자르고 자른 대로 해시태그 만들고 만들면서 해시태그 매핑까지 하기. 이때 타입하고 외래키 번호도 받아야될듯 
	//key는 게시판 번호 
	
	public void makeHashTags(String tags, String tagMappingType,int key) {
		
		//혹시 모를 앞 뒤 공백 제거 후에 공백으로 잘라서 태그 구분함 
		
		String[] hashTags = tags.trim().split(" "); 
		
		for(String hashTitle: hashTags) {
			
			//새로운 거 만들기 전에 이미 태그가 존재하는지 확인 한 번 하기 
			
			HashTagDTO hashTagDTO= hashTagMapper.findHashTagByHashName(hashTitle); 
			
			if(hashTagDTO == null) {
				hashTagDTO = new HashTagDTO(hashTitle); 
			}
			
			int hashNo = hashTagDTO.getHasNo(); 
			
			hashTagMapper.insert(hashTagDTO);
			
			hashTagMappingService.createHashTagMapping(hashNo, key, tagMappingType); 
			
		}
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
