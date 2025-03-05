package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.TipReplyDTO;

public interface TipReplyMapper {
	
	// 특정 글의 댓글 전체 보이기
	@Select("SELECT tipReplyNo, nickName, content, regDate FROM tipreply WHERE tipBoardNo = ${tipBoardNo} ORDER BY regDate DESC")
	public List<TipReplyDTO> selectReply(int tipBoardNo);

	// 댓글 등록
	public void insertReply(TipReplyDTO reply);

	// 댓글 삭제
	@Delete("DELETE FROM tipreply WHERE tipReplyNo =#{tipReplyNo}")
	public void removeReply(int tipReplyNo);
	
	// 특정 댓글 한개 반환
	@Select("SELECT tipReplyNo, nickName, content, regDate FROM tipreply WHERE tipReplyNo = ${tipReplyNo}")
	public TipReplyDTO selectRep(int tipReplyNo);
}
