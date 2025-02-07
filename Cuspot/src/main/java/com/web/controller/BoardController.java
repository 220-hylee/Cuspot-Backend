package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.web.domain.Board;
import com.web.service.BoardService;

@RestController
@RequestMapping("/api")
@CrossOrigin()
// 게시판
public class BoardController {
	
	@Autowired
	private BoardService bs;

	
	// 게시판 작성한거 저장하기
	@PostMapping("/createboard")
		public void createBoard(@RequestBody Board board) {
			bs.createBoard(board);
	}
	
	
	// 게시판 목록 가져오기
	@GetMapping("/getBoardList")
	public List<Board> getBoardList() {
		List<Board> boardList = bs.getBoardList();
		
		return boardList ;
	}
	
	
	// 게시판 삭제 하기
	@DeleteMapping("/deleteBoard/{postId}")
	public void DeleteBoard(@PathVariable Long postId) {
		bs.deleteBoard(postId);
	}
	
	
	// 좋아요 갯수 가져오기
	@GetMapping("/getLikes/{postId}")
	public int getLikes(@PathVariable Long postId) {
		
		return bs.getLikes(postId);
	}
	
	
	// 좋아요 갯수 및 상태 업데이트
	@PostMapping("/updateLike/{postId}/{newLikesCount}")
	public void updateLike(@PathVariable Long postId, @PathVariable int newLikesCount) {
	    bs.updateLike(postId, newLikesCount);
	}
	
	
	
	
	
	
}	
