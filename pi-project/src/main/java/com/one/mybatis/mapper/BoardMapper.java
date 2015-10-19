package com.one.mybatis.mapper;


import com.one.mybatis.Board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface BoardMapper {
		@Insert("INSERT into Board(board_type,board_no,user,title,content,img1,reg_date,mod_date) VALUES(#{board_type}, #{board_no}, #{user}, #{title}, #{content}, #{img1}, #{reg_date}, #{mod_date})")
		  void insertBoard(Board Board);
		 
		@Select("SELECT * from Board WHERE no = #{no}")
		Board selectBoard(int no);
		
		@Select("SELECT * from Board order by no desc")
		List<Map<String, Object>> findAll();
		
		@Update("UPDATE Board SET name=#{BoardName}, district =#{district} WHERE no =#{vno}")
		void updateBoard(Board Board);
		
		@Delete("DELETE FROM Board WHERE no =#{no}")
		void deleteBoard(int no);
}
