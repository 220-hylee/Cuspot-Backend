package com.web.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.web.domain.Board;
import com.web.domain.Comments;

public interface CommentsRepository extends CrudRepository<Comments, Long>{
	
	List<Comments> findAllByBoardidOrderByCreateDateDesc(Board board);
	
	// 댓글 삭제
	void deleteByIdAndBoardidAndEmail(Long id, Board board, String email);

	// 게시글 삭제시 댓글 삭제
	void deleteByBoardid(Board board);
}
