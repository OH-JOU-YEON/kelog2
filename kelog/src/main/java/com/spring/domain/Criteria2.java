package com.spring.domain;

import lombok.Data;

//페이징과 검색 관련 기능 수행
@Data
public class Criteria2 {
	// 현재 페이지 번호
	private int pageNum;
	
	//한 페이지에 표시될 게시물의 수
	private int amount;
	
	//페이지에 따라 첫 번째로 나오는 글의 행 번호
	private int start;
	
	// 처음 목록으로 진입시 사용자는 페이지번호와 표시할 게시물수를 주지 않음
	// 따라서 초기 값 필요
	public Criteria2() {
		this(1,9); // 자기자신의 생성자 호출
	}
	
	public Criteria2(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.start = calculateStart();
	}
	
	
	public int getStart() {
		return calculateStart();
	}
	// 페이지 시작 위치(start) 값 계산 메서드
	private int calculateStart() {
		return (this.pageNum-1)*this.amount;
		
	}
}
