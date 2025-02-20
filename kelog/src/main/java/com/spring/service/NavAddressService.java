package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostAddressMappingDTO;
import com.spring.domain.NavAddressDTO;
import com.spring.persistence.BlogPostAddressMappingMapper;
import com.spring.persistence.NavAddressMapper;

@Service 
public class NavAddressService {
	
	@Autowired
	NavAddressMapper navAddressMapper; 
	
	@Autowired
	BlogPostAddressMappingMapper blogPostAddressMappingMapper; 
	
	
	
	//주소가 있는지 검색하고 있으면 있는거 반환. 없으면 새로 만들어서 반환 
	//검색은 이름, 위도, 경도로 한다. 
	
	public NavAddressDTO getNavAddress(String addName, double latitude, double longitude) {
		
		if(navAddressMapper.findByNameAndTude(addName, latitude, latitude) != null) {
			return navAddressMapper.findByNameAndTude(addName, latitude, latitude); 
		} else {
			
			return navAddressMapper.insert(new NavAddressDTO(addName, latitude, longitude));
		}
	}
	
	
	//블로그 포스트 아이디랑 주소 아이디 받아서 검색하고 있으면 있는 거 반환 없으면 새로 만들어서 반환 
	
	public BlogPostAddressMappingDTO getBlogPostAddressMapping(int blogPostId,int addressId ) {
		
		BlogPostAddressMappingDTO blogPostAddressMapping = blogPostAddressMappingMapper.findByBlogPostIdAndAddressId(blogPostId, addressId);
		
		if(blogPostAddressMapping != null) {
			return blogPostAddressMapping; 
		}else {
			
			return new BlogPostAddressMappingDTO(blogPostId,addressId); 
		}
		
	}
	
	//검색해보고 있으면 삭제하고 번호를 문자열 형태로 반환 없으면 처음부터 없었다는 문자열 반환 
	
	public String deleteBlogPostMappingDTO(int id) {
		
		BlogPostAddressMappingDTO blogPostAddressMapping = blogPostAddressMappingMapper.findById(id); 
		
		if(blogPostAddressMapping != null) {
			blogPostAddressMappingMapper.delete(id); 
			
			return Integer.toString(id); 
		}else {
			
			return "삭제하려는 객체가 처음부터 없었습니다."; 
		}
	}

}
