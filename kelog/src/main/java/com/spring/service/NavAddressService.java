package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostAddressMappingDTO;
import com.spring.domain.NavAddressDTO;
import com.spring.domain.DTOS.Navs;
import com.spring.persistence.BlogPostAddressMappingMapper;
import com.spring.persistence.NavAddressMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service 
public class NavAddressService {
	
	@Autowired
	NavAddressMapper navAddressMapper; 
	
	@Autowired
	BlogPostAddressMappingMapper blogPostAddressMappingMapper; 
	
	
	
	
	public void navMapping(List<Navs> navs, int blogPostId) {
		
		for(Navs na : navs) {
			
			NavAddressDTO navAdd = getNavAddress(na.getTitle(), na.getCoord().getQa().getLa(),na.getCoord().getQa().getMa()); 
			
			int addId = navAdd.getAddressNo(); 
			
			BlogPostAddressMappingDTO blogPostAddressMappingDTO = getBlogPostAddressMapping(blogPostId,addId); 
			
			log.info("블로그 포스트 주소가 매핑되었습니다 매핑된 주소 번호:"+ blogPostAddressMappingDTO.getAddressId());
		}
	}
	
	
	
	
	public NavAddressDTO getNavAddress(String addName, double latitude, double longitude) {
		
		if(navAddressMapper.findByNameAndTude(addName, latitude, latitude) != null) {
			return (NavAddressDTO) navAddressMapper.findByNameAndTude(addName, latitude, latitude); 
		} else {
			
			return navAddressMapper.insert(new NavAddressDTO(addName, latitude, longitude));
		}
	}
	
	

	
	public BlogPostAddressMappingDTO getBlogPostAddressMapping(int blogPostId,int addressId ) {
		
		BlogPostAddressMappingDTO blogPostAddressMapping = blogPostAddressMappingMapper.findByBlogPostIdAndAddressId(blogPostId, addressId);
		
		if(blogPostAddressMapping != null) {
			return blogPostAddressMapping; 
		}else {
			
			return new BlogPostAddressMappingDTO(blogPostId,addressId); 
		}
		
	}
	

	
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
