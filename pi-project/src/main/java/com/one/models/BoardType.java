package com.one.models;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

public class BoardType {
	public BoardType() {
    }

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long no;

    @ManyToOne
    @JsonBackReference
    private Board board;

    @Column
    private String type;
    
    public BoardType(Board board, String type) {
        this.board = board;
        this.type = type;
    }

    public Long getId() {
        return no;
    }

    public void setId(Long no) {
        this.no = no;
    }

    public Board getBoard() {
        return board;
    }

    public void setBoard(Board board) {
        this.board = board;
    }

    public String getBoardtype() {
        return type;
    }

    public void setBoardtype(String type) {
        this.type = type;
    }

}
