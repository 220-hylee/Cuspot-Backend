package com.web.service;

import java.util.List;

import com.web.domain.Comments;

public interface CommentsService {
	// 댓글 생성
	public void  insertComments(Comments comments);
   
	// 댓글 목록 
	public List<Comments> getCommentsList(Long postId);
	
	
	
	// 댓글 삭제
	public void deleteComments(Long postId, String email, Long commentId);

	
}
