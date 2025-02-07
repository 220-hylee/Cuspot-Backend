package com.web.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Heart{
	
	@Id
    @GeneratedValue
    private Long id; // 번호
	
	// 좋아요 상태
	private boolean liked = true;
	
	 @ManyToOne
    @JoinColumn(name = "boardid", nullable = false)
	private Board boardid;	// 글 번호 
	
	@Column()
	 private String email; // 이메일
	
	 
	 
}
