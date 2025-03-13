package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.Criteria;
import com.spring.domain.ReportDTO;
import com.spring.domain.TipPostDTO;
import com.spring.persistence.TipPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class TipServiceImpl implements TipService{
	
	private final TipPostMapper mapper;
	@Override
	public void created(TipPostDTO dto) {
		mapper.insert(dto);
		
	}

	@Override
	public TipPostDTO read(Integer key) {
		return mapper.read(key);
	}

	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
	}

	@Override
	public int modify(TipPostDTO dto) {
		return mapper.update(dto);
	}

	@Override
	public List<TipPostDTO> listAll() {
		return mapper.readAll();
	}

	@Override
	public int getTotal() {
		return mapper.getTotalCount();
	}

	@Override
	public List<TipPostDTO> getList(Criteria cri) {
		log.info(cri);
		List<TipPostDTO> result = mapper.listwithPasing(cri);
		log.info(result);
		return result;
	}
	
	// 좋아요
	public void addLike(int uno, Integer tipBoardNo) {
		mapper.addlike(uno, tipBoardNo);
	}

	public void removeLike(int uno, Integer tipBoardNo) {
		mapper.removelike(uno, tipBoardNo);
	}

	@Override
	public int unlikecount(Integer tipBoardNo, int uno) {
		removeLike(uno, tipBoardNo);
        return mapper.unLikecount(tipBoardNo);
	}

	@Override
	public int uplikecount(Integer tipBoardNo, int uno) {
		addLike(uno, tipBoardNo);
        return mapper.upLikecount(tipBoardNo);
	}

	@Override
	public boolean isUserLikedTipPost(int uno, Integer tipBoardNo) {
		return mapper.isLike(uno,tipBoardNo);
	}

	@Override
	public void reportTipPost(int tipBoardNo, String email, String reportReason) {
		ReportDTO dto = new ReportDTO();
		dto.setTipBoardNo(tipBoardNo);
		dto.setEmail(email);
		dto.setReportReason(reportReason);
		
		mapper.insertTipReport(dto);
		
	}

	@Override
	public boolean isUserReportTipPost(String email, Integer tipBoardNo) {
		return mapper.isReport(email,tipBoardNo);
	}

	@Override
	public int upreportCnt(Integer tipBoardNo) {
		return mapper.upreportCnt(tipBoardNo);
	}

	@Override
	public int downreportCnt(Integer tipBoardNo) {
		return mapper.downreportCnt(tipBoardNo);
	}

	@Override
	public int deleteReport(Integer reportNo) {
		return mapper.deleteReport(reportNo);
	}

	@Override
	public List<ReportDTO> reportListAll() {
		return mapper.reportListAll();
	}

}
