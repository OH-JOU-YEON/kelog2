package com.spring.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BlogDTO;
import com.spring.domain.BlogPostDTO;
import com.spring.domain.BlogReportDTO;
import com.spring.domain.UserDTO;
import com.spring.domain.DTOS.BlogNoAndNickNameVO;
import com.spring.domain.DTOS.BlogProfileDTO;
import com.spring.domain.DTOS.logDTO;
import com.spring.persistence.BlogMapper;
import com.spring.persistence.BlogPostMapper;
import com.spring.persistence.NickNameMapper;
import com.spring.persistence.UserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class BlogServiceImpl implements BlogService {

	private final BlogPostMapper mapper;
	
	@Autowired
	private final UserMapper usermapper; 
	
	@Autowired
	private final BlogMapper blogMapper; 
	
	@Autowired
	private final NickNameMapper nickNameMapper; 

	@Override
	public void created(BlogPostDTO dto) {
		mapper.insert(dto);
	}

	@Override
	public BlogPostDTO read(Integer key) {
		return mapper.read(key);
	}

	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
	}

	@Override
	public List<BlogPostDTO> listAll() {
		return mapper.readAll();
	}

	@Override
	public int modify(BlogPostDTO dto) {
		return mapper.update(dto);
	}

	@Override
	public boolean isUserLikedblogPost(Integer uno, Integer blogPostNo) {
		return mapper.isLike(uno, blogPostNo);
	}

	
	public void addLike(int uno, Integer blogPostNo) {
		mapper.addlike(uno, blogPostNo);
	}

	public void removeLike(int uno, Integer blogPostNo) {
		mapper.removelike(uno, blogPostNo);
	}

	@Override
	public int uplikecount(Integer blogPostNo, Integer uno) {
		addLike(uno, blogPostNo);
        return mapper.upLikecount(blogPostNo);
	}

	@Override
	public int unlikecount(Integer blogPostNo, Integer uno) {
		removeLike(uno, blogPostNo);
        return mapper.unLikecount(blogPostNo);
	}

	@Override
	public void reportBlogPost(int blogPostNo, String email, String reportReason) {
		BlogReportDTO dto = new BlogReportDTO();
		dto.setBlogPostNo(blogPostNo);
		dto.setEmail(email);
		dto.setReportReason(reportReason);
		
		mapper.insertReport(dto);
	}
	
	
	public BlogNoAndNickNameVO getblogNoAndNickName(String email) {
		
		UserDTO userDTO = usermapper.selectMember(email); 
		
		BlogDTO blogDTO = blogMapper.findBlogByUserNo(userDTO.getUno()); 
		
		String nickName = nickNameMapper.selectNickName(userDTO.getUno()); 
		
		return new BlogNoAndNickNameVO(blogDTO.getBlogNo(),nickName); 
		
		
	}
	
	
	public BlogProfileDTO getBlogProfileByBlogName(String blogName,String email) {
		
		BlogDTO blogDTO = blogMapper.findBlogByBlogName(blogName); 
		
		UserDTO userDTO = usermapper.select(blogDTO.getUno()); 
		
		boolean mineOrNot; 
		
		if(userDTO.getEmail() == email) {
			mineOrNot = true; 
		}else {
			mineOrNot = false; 
		}
		
		return new BlogProfileDTO(userDTO,mineOrNot); 
	}
	
	
	public BlogDTO getBlogByBlogNameAndUno(String blogName,int uno) {
		
		BlogDTO blogDTO = blogMapper.findBlogByBlogName(blogName); 
		
		if(blogDTO == null) {
			
			blogDTO = new BlogDTO(uno,blogName); 
			
			blogMapper.insert(blogDTO);
		}
		
		return blogDTO; 
	}
	
	
	public List<logDTO> getblogPosts(String blogName) {
		
		BlogDTO blogDTO = blogMapper.findBlogByBlogName(blogName); 
		
		
		return mapper.findAllByBlogNo(blogDTO.getBlogNo()).stream().map(s -> new logDTO(s)).collect(Collectors.toList()); 
		
	}

}
