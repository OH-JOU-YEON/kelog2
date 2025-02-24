package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.ReplyDTO;

public interface BlogReplyMapper {
	// 특정 글의 댓글 전체 보이기
	@Select("SELECT content, regDate, nickName, blogReplyNo FROM blogPostReply WHERE blogPostNo = #{blogPostNo} ORDER BY regDate DESC")
	public List<ReplyDTO> selectReply(int blogPostNo);
	
	// 댓글 등록
	public void insertReply(ReplyDTO reply);
	
	// 댓글 삭제
	@Delete("DELETE FROM blogPostReply WHERE blogReplyNo = #{blogReplyNo}")
	public void removeReply(int blogReplyNo);
	
	// 댓글 수정
	public void modifyReply(ReplyDTO reply);

	// 특정 댓글 한개 반환
	@Select("SELECT content, regDate, nickName, blogReplyNo FROM blogPostReply WHERE blogReplyNo = #{blogReplyNo}")
	public ReplyDTO selectRep(int blogReplyNo);	
}
