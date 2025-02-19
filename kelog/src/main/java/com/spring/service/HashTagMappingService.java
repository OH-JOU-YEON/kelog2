package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.HashTagMappingDTO;
import com.spring.persistence.HashTagMappingMapper;

@Service 
public class HashTagMappingService {
	
	@Autowired
	HashTagMappingMapper hashTagMappingMapper; 
	
	
	
	//태그 매핑 생성하는 메서드. 생성 전에 검색해보고 있으면 그거 반환. 없으면 생성 
	
		public HashTagMappingDTO createHashTagMapping(int hashNo, int key, String type) {
			
			HashTagMappingDTO hashTagMapping = null; 
			
			switch(type) {
			
			case "blogNo":
				if(hashTagMappingMapper.findByHashNoAndBlogNo(hashNo, key) != null) {
					hashTagMapping = hashTagMappingMapper.findByHashNoAndBlogNo(hashNo, key); 
				}else {
					hashTagMapping = new HashTagMappingDTO(hashNo,key,type);  
				}
				break;
			case "travelNo":
				
				if(hashTagMappingMapper.findByHashNoAndTravelNo(hashNo, key) != null) {
					hashTagMapping = hashTagMappingMapper.findByHashNoAndTravelNo(hashNo, key); 
				}else {
					hashTagMapping = new HashTagMappingDTO(hashNo,key,type);  
				}
				
				break; 
			
			case "tipNo" :
				
				if(hashTagMappingMapper.findByHashNoAndTipNo(hashNo, key) != null) {
					hashTagMapping = hashTagMappingMapper.findByHashNoAndTipNo(hashNo, key); 
				}else {
					hashTagMapping = new HashTagMappingDTO(hashNo,key,type);  
				}
			
				break; 
			}
			
            hashTagMappingMapper.insert(hashTagMapping); 
			
			return hashTagMapping; 
			
			
		}
	
	
	//태그 매핑 삭제하는 메서드 
	
		public String deleteHashTagMapping(int indexNo) {
			
			HashTagMappingDTO hashTagMappingDTO = hashTagMappingMapper.findHashTagMappingByIndexNo(indexNo); 
			
			if(hashTagMappingDTO != null) {
				
				hashTagMappingMapper.delete(indexNo); 
				
				return Integer.toString(indexNo); 
			}else {
				
				return "삭제할 객체가 처음부터 존재하지 않았습니다."; 
			}
		}
	
	
	
	
	
	

}
