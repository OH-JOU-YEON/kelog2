package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogPostAddressMappingDTO;

@Mapper
public interface BlogPostAddressMappingMapper {
	

	public void insert(BlogPostAddressMappingDTO dto);
	
	

	public List<BlogPostAddressMappingDTO> getAddressList(int blogPostId); 
	
	
	public BlogPostAddressMappingDTO findByBlogPostIdAndAddressId(int blogPostId, int addressId); 
	
	
	@Select("SELECT * FROM blogPostAddressMapping WHERE id = #{id}")
	public BlogPostAddressMappingDTO findById(int id); 
	
	

	
	@Delete("DELETE FROM blogPostAddressMapping WHERE id = #{id}")	
	public int delete(int id);
	
	

}
