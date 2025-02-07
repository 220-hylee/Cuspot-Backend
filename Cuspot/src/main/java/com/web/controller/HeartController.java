package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.web.domain.Heart;
import com.web.service.HeartService;

@RestController
@RequestMapping("/api")
@CrossOrigin()
// 좋아요 상태 
public class HeartController {
	
	@Autowired
	private HeartService hs;
	
	// 게시판 마다  각 유저 당 좋아요 상태 정보 만들기
	@PostMapping("/insertLike")
	public void insertLike(@RequestBody  Heart heart) {
		hs.insertLike(heart);
	}
	
	
	// 좋아요 상태 정보 가져오기
	@GetMapping("/getLiked/{postId}/{email}")
	public boolean getLiked(@PathVariable Long postId, @PathVariable String email) {
		Long boardid = postId;
		boolean res = hs.getLiked(boardid,email);
		
		return res;
	}
	
	// Unlike를 누르면 좋아요  삭제
	@DeleteMapping("/deleteLike/{postId}/{email}")
	public void deleteLike(@PathVariable Long postId, @PathVariable String email) {
		Long boardid = postId;
		
		hs.deleteLike(boardid, email);
	}
	
	
}
