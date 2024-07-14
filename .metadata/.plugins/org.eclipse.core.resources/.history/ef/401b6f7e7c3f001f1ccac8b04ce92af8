package com.web.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.springframework.web.bind.annotation.CrossOrigin;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Board {
    
	
	 // 기본 생성자
    public Board() {
    }

    // 매개변수를 받는 생성자 (필요한 경우)
    public Board(Long id) {
        this.id = id;
    }
	
	@Id
	@GeneratedValue
	@Column(name="boardid")
	private Long id; // 글번호

    @Column(nullable = false)
    private String email; // 이메일
    
    @Column(nullable = false)
    private String username; // 유저이름
    
    private String content; // 내용
    
    private String profile; // 프로필 이미지 URL
    

    private String fileData; // 파일 데이터
    
    
    private String fileName; // 파일 이름
    
   
    private String fileType; // 파일 타입(jpg,png..)
    
    @Column(nullable = false)
    private String timestamp; // 날짜 
  
    private String category; // 카테고리
    
    private int likes;// 좋아요 갯수
    

}
