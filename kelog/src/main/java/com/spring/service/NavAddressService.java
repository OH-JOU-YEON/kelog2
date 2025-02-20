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
	
	
	
	//�ּҰ� �ִ��� �˻��ϰ� ������ �ִ°� ��ȯ. ������ ���� ���� ��ȯ 
	//�˻��� �̸�, ����, �浵�� �Ѵ�. 
	
	public NavAddressDTO getNavAddress(String addName, double latitude, double longitude) {
		
		if(navAddressMapper.findByNameAndTude(addName, latitude, latitude) != null) {
			return navAddressMapper.findByNameAndTude(addName, latitude, latitude); 
		} else {
			
			return navAddressMapper.insert(new NavAddressDTO(addName, latitude, longitude));
		}
	}
	
	
	//��α� ����Ʈ ���̵�� �ּ� ���̵� �޾Ƽ� �˻��ϰ� ������ �ִ� �� ��ȯ ������ ���� ���� ��ȯ 
	
	public BlogPostAddressMappingDTO getBlogPostAddressMapping(int blogPostId,int addressId ) {
		
		BlogPostAddressMappingDTO blogPostAddressMapping = blogPostAddressMappingMapper.findByBlogPostIdAndAddressId(blogPostId, addressId);
		
		if(blogPostAddressMapping != null) {
			return blogPostAddressMapping; 
		}else {
			
			return new BlogPostAddressMappingDTO(blogPostId,addressId); 
		}
		
	}
	
	//�˻��غ��� ������ �����ϰ� ��ȣ�� ���ڿ� ���·� ��ȯ ������ ó������ �����ٴ� ���ڿ� ��ȯ 
	
	public String deleteBlogPostMappingDTO(int id) {
		
		BlogPostAddressMappingDTO blogPostAddressMapping = blogPostAddressMappingMapper.findById(id); 
		
		if(blogPostAddressMapping != null) {
			blogPostAddressMappingMapper.delete(id); 
			
			return Integer.toString(id); 
		}else {
			
			return "�����Ϸ��� ��ü�� ó������ �������ϴ�."; 
		}
	}

}
