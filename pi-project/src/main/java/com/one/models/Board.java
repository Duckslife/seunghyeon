package com.one.models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.util.Date;
import java.util.List;

/**
 * Created by jared on 15. 1. 2..
 */
@Entity
public class Board {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long no;
    
   /* @OneToMany
    @JoinTable(name="BoardType" ,
    joinColumns=@JoinColumn(name="board_id", referencedColumnName="id"))
    private List<BoardType> boardTypeList;*/
    
    @NotNull
    @Size(min = 1, max = 255)
    @Column(nullable = false)
    private String board_no;
    
    @Column(nullable = false)
    private String user;
    
    @Column(nullable = false,length = 100)
    private String title;

    @Column(nullable = false,length = 100000000)
    private String content;
    
    @Column(nullable = true)
    private String img;
    
    @Column(nullable = true)
    private String video_url;
    
    @Column(nullable = true)
    private String ip;
    
    @Column(nullable = false)
    private Date reg_date;
    
    @Column(nullable = true)
    private Date mod_date;
    
    @Column(nullable = true)
    private String recommend;
    
    @Column(nullable = true)
    private String hit;
    

    public Board() {
    }


	public long getNo() {
		return no;
	}



	public void setNo(long no) {
		this.no = no;
	}




	public String getBoard_no() {
		return board_no;
	}



	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}



	public String getUser() {
		return user;
	}



	public void setUser(String user) {
		this.user = user;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public String getVideo_url() {
		return video_url;
	}



	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}



	public String getIp() {
		return ip;
	}



	public void setIp(String ip) {
		this.ip = ip;
	}



	public Date getReg_date() {
		return reg_date;
	}



	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}


	public Date getMod_date() {
		return mod_date;
	}



	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}



	public String getRecommend() {
		return recommend;
	}



	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}



	public String getHit() {
		return hit;
	}



	public void setHit(String hit) {
		this.hit = hit;
	}


    
}