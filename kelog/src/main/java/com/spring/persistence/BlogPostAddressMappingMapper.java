package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogPostAddressMappingDTO;

public interface BlogPostAddressMappingMapper {
	


	public void insert(BlogPostAddressMappingDTO dto);
	
	

	public List<BlogPostAddressMappingDTO> getAddressList(int blogPostId); 
	
	@Select("SELECT * FROM blogPostAddressMapping WHERE blogPostId = #{blogPostId} AND addressId = #{addressId}")
	public BlogPostAddressMappingDTO findByBlogPostIdAndAddressId(int blogPostId, int addressId);
	
	
	@Select("SELECT * FROM blogPostAddressMapping WHERE id = #{id}")
	public BlogPostAddressMappingDTO findById(int id); 
	
	

	
	@Delete("DELETE FROM blogPostAddressMapping WHERE id = #{id}")	
	public int delete(int id);
	

	

}
