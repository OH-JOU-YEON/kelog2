package com.spring.domain.DTOS;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.TipPostDTO;
import com.spring.domain.TravelPostDTO;

import lombok.Getter;

@Getter
public class SearchDTO {
	
	
	private String title; 
	
	private String thumbnails; 
	
	private String preview; 
	
	
	public SearchDTO(BlogPostDTO blogPostDTO) {
		
		
		this.title = blogPostDTO.getTitle(); 
		
		this.thumbnails = getThumbnails(blogPostDTO.getContent()); 
		
		this.preview = getPreview(blogPostDTO.getContent()); 
		
	}
	
public SearchDTO(TipPostDTO tipPostDTO) {
	
	this.title = tipPostDTO.getTitle();
	
	this.thumbnails = getThumbnails(tipPostDTO.getContent()); 
	
	this.preview = getPreview(tipPostDTO.getContent()); 
		
	}

public SearchDTO(TravelPostDTO travelPostDTO) {
	
	this.title = travelPostDTO.getTitle(); 
	
	this.thumbnails = getThumbnails(travelPostDTO.getContent()); 
	
	this.preview = getPreview(travelPostDTO.getContent()); 
	
}
	
	String getThumbnails(String postContent) {
        String[] splitPostContentWithTagStart = postContent.split("<");

        //위 메서드와 로직 반대. img> 포함하면 공백으로 잘라서 검사 후에 src를 포함하면 =로 자르고 뒤에 거 반환

        for(String splitContent : splitPostContentWithTagStart) {
            if(splitContent.contains("img>")) {

                String[] splitContentWithBlank = splitContent.split(" ");

                for(String splitWithBlankContent : splitContentWithBlank) {
                    if(splitWithBlankContent.contains("src")) {
                        String[] splitContentWithSrc = splitWithBlankContent.split("=");
                        return splitContentWithSrc[1];
                    }
                    else {
                        continue;
                    }
                }

            }
            else {
                continue;
            }
        }


        return "";

    }
	
	String getPreview(String postContent) {
        List<String> splitPostContentWithTagStart = Arrays.stream(postContent.split("<")).filter(s -> !s.isEmpty()).collect(Collectors.toList());




        for(String splitContent : splitPostContentWithTagStart) {
            if(splitContent.contains("img>")) {
                continue;
            }
            else {
                String[] splitPostContentWithTagEnd = splitContent.split(">");
                return splitPostContentWithTagEnd[1];
            }
        }

        //<이거로 파싱해서 img>가 속해있으면 제끼고 아니면 그거를 또 >로 파싱한 뒤에 1번째 거 갖고오면 댐 끝까지 이미지뿐이면 빈 문자열 반환


        return "";

    }


}
