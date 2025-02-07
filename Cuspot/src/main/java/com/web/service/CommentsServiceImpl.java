package com.web.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.domain.Board;
import com.web.domain.Comments;
import com.web.persistence.CommentsRepository;

@Service
public class CommentsServiceImpl implements CommentsService{
	
	@Autowired
	private CommentsRepository commentsRepo;
	// 댓글 생성
	@Override
	public void insertComments(Comments comments) {
		commentsRepo.save(comments);
		
	}
	
	
	
	
	// 댓글 목록
	@Override
	public List<Comments> getCommentsList(Long postId) {
		
		Long boardid = postId;

		Board board = new Board();
        board.setId(boardid);
		return (List<Comments>) commentsRepo.findAllByBoardidOrderByCreateDateDesc(board);
	}
	
	
	
	//댓글 삭제
	@Transactional
	public void deleteComments(Long postId, String email, Long commentId) {
		Long boardid = postId;
		

		Board board = new Board();
		 board.setId(boardid);
		commentsRepo.deleteByIdAndBoardidAndEmail(commentId,board, email);
	}
	
}
