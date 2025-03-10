package com.spring.domain.DTOS;

import java.util.Date;

import com.spring.domain.BlogPostDTO;

import lombok.Data;

@Data
public class logDTO {
	
	private String title; 
	
	private String thumbnails; 
	
	private String content; 
	
	private int likeCount; 
	
	private Date createdDate; 
	
	
	public logDTO(BlogPostDTO blogPostDTO) {
		
		this.title = blogPostDTO.getTitle(); 
		
		this.content = blogPostDTO.getContent(); 
		
		this.thumbnails = getThumbnails(this.content); 
		
		this.likeCount = blogPostDTO.getLikeCnt(); 
		
		this.createdDate = blogPostDTO.getRegDate(); 
		
		
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

}


