package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogPostAddressMappingDTO;

@Mapper
public interface BlogPostAddressMappingMapper {
	
	//생성하는 로직 
	public void insert(BlogPostAddressMappingDTO dto);
	
	
	//블로그 포스트 아이디로 검색한 결과를 리스트
	public List<BlogPostAddressMappingDTO> getAddressList(int blogPostId); 
	
	
	public BlogPostAddressMappingDTO findByBlogPostIdAndAddressId(int blogPostId, int addressId); 
	
	
	@Select("SELECT * FROM blogPostAddressMapping WHERE id = #{id}")
	public BlogPostAddressMappingDTO findById(int id); 
	
	
	//삭제하는 로직 
	
	@Delete("DELETE FROM blogPostAddressMapping WHERE id = #{id}")	
	public int delete(int id);
	
	

}
