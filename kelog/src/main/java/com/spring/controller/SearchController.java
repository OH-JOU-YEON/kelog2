package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.HashTagDTO;
import com.spring.domain.HashTagMappingDTO;
import com.spring.domain.TipPostDTO;
import com.spring.domain.TravelPostDTO;
import com.spring.domain.DTOS.SearchDTO;
import com.spring.persistence.BlogPostMapper;
import com.spring.persistence.HashTagMapper;
import com.spring.persistence.HashTagMappingMapper;
import com.spring.persistence.TipPostMapper;
import com.spring.persistence.TravelPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j 
@Controller
@RequiredArgsConstructor 
public class SearchController {
	
	@Autowired
	private final HashTagMapper hashTagMapper; 
	
	@Autowired
	private final HashTagMappingMapper hashTagMappingMapper; 
	
	@Autowired
	private final BlogPostMapper blogPostMapper; 
	
	@Autowired
	private final TipPostMapper tipPostMapper; 
	
	@Autowired 
	private final TravelPostMapper travelPostMapper; 
	
	
	@GetMapping("/search")
	public String getSearchResult(HttpServletRequest request,Model model, @RequestParam(value="keyword", required=false) String keyword) {
		
		System.out.println("검색키워드 " + keyword); 
		
		List<HashTagDTO> hashTags =  hashTagMapper.findHashTagNoByHashNameLike(keyword); 
		
		List<SearchDTO> searchResults  = new ArrayList<>(); 
		
		for(HashTagDTO hash : hashTags) {
			
			List<HashTagMappingDTO> hashMappings = hashTagMappingMapper.findAllHashTagMappingByHashNo(hash.getHasNo()); 
			
			
			for(HashTagMappingDTO mapping : hashMappings) {
				
				//블로그 아이디가 null이 아니면 
				if(mapping.getBlogNo() != 0) {
					
					//블로그 포스트 찾아서 서치 리스트에 넣기 
					BlogPostDTO blog = blogPostMapper.findByBlogPostNo(mapping.getBlogNo());
					
					searchResults.add(new SearchDTO(blog)); 
					
					
				} else if (mapping.getTipNo() != 0) {
					
					TipPostDTO tip = tipPostMapper.findByTipPostNo(mapping.getTipNo()); 
					
					searchResults.add(new SearchDTO(tip)); 
					
				} else {
					
					TravelPostDTO travel = travelPostMapper.findBytravelPostNo(mapping.getTravelNo()); 
					
					searchResults.add(new SearchDTO(travel)); 
					
				}
			}
			
		}
		
		model.addAttribute("searchResults", searchResults); 
		
		
		return "search/search"; 
	}

}
