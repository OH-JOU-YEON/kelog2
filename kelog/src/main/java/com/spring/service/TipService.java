package com.spring.service;

import java.util.List;

import com.spring.domain.Criteria;
import com.spring.domain.TipPostDTO;

public interface TipService extends GenericService<TipPostDTO, Integer> {
	
	public List<TipPostDTO> listAll(); 
	public int getTotal();
	public List<TipPostDTO> getList(Criteria cri);
	public int modify(TipPostDTO dto);
	// 좋아요 확인 취소
	public int unlikecount(Integer tipBoardNo, int uno);
	
	public int uplikecount(Integer tipBoardNo, int uno);
	
	public boolean isUserLikedTipPost(int uno, Integer tipBoardNo);
	
	// 신고확인
	public void reportTipPost(int tipBoardNo, String email, String reportReason);
	
	public boolean isUserReportTipPost(String email, Integer tipBoardNo);
	
	public int upreportCnt(Integer tipBoardNo);
	
	public int downreportCnt(Integer tipBoardNo);
}
