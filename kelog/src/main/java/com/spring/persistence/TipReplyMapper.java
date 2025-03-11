package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.ReplyDTO;

public interface TipReplyMapper {
	
	// 특정 글의 댓글 전체 보이기
	@Select("SELECT replyNo, nickName, email, content, regDate FROM reply WHERE tipBoardNo = ${tipBoardNo} ORDER BY regDate DESC")
	public List<ReplyDTO> selectReply(int tipBoardNo);

	// 댓글 등록
	public void insertReply(ReplyDTO reply);

	// 댓글 삭제
	@Delete("DELETE FROM reply WHERE replyNo =#{replyNo}")
	public void removeReply(int replyNo);
	
	// 특정 댓글 한개 반환
	@Select("SELECT replyNo, nickName, email, content, regDate FROM reply WHERE replyNo = ${replyNo}")
	public ReplyDTO selectRep(int replyNo);
}
