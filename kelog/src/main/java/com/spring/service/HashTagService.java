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
	
	
	
	
	//������ Ÿ��Ʋ�� �±װ� �ִ��� �˻��غ� �ڿ� ������ �װ� ��ȯ�ϰ� �ƴϸ� ���� �����ϴ� �޼��� 
	
	public HashTagDTO saveTag(String title) {
		
		HashTagDTO hashTagDTO;
		
		if(hashTagMapper.findHashTagByHashName(title) != null) {
			hashTagDTO = hashTagMapper.findHashTagByHashName(title); 
		} else {
			
			hashTagDTO = new HashTagDTO(title); 
			
		}
		
		return hashTagDTO; 
	}
	
	
	//�±� ���� �޼��� 
	
	public String deleteTag(int hashNo) {
		
		
		String deletedName; 
		
		if(hashTagMapper.findHashTagByHashNo(hashNo) != null) {
			deletedName = hashTagMapper.findHashTagByHashNo(hashNo).getHashName(); 
			
			hashTagMapper.delete(hashNo); 
			
			return deletedName; 
		}else {
			
			return "������ ���� ó������ �������� �ʾҽ��ϴ�"; 
		}
	}
	
	
	

}
