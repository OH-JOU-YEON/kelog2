package com.spring.domain;

import lombok.Data;

@Data
public class PageDTO2 {
	//페이징 처리에서 표시될 시작 페이지 번호
	private int startPage;
	
	//페이징 처리에서 표시될 끝 페이지 번호
	private int endPage;
	
	//전체 데이터의 갯수
	private int total;
	
	// 이전 페이지가 있는지 여부
	private boolean prev;
	
	// 다음 페이지가 있는지 여부
	private boolean next;
	
	private Criteria2 cri;
	
	public PageDTO2(Criteria2 cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//현재 페이지가 속한 페이지 그룹의 마지막 페이지 번호 계산
		this.endPage =(int) Math.ceil((cri.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		
		// 찐 전체 페이지 수 계산
		int realEnd = (int) Math.ceil((total*1.0)/cri.getAmount());
		// 마지막 페이지 번호가 실제 페이지 수보다 큰 경우 조정
		if(realEnd< this.endPage) {
			this.endPage = realEnd;
		}
		
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
	
}
