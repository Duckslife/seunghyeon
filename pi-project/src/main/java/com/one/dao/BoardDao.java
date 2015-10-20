package com.one.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.one.models.Board;

public interface BoardDao  extends JpaRepository<Board, Long>{

}
