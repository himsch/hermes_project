package com.my.hermes.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.hermes.vo.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession session;
	
	public ArrayList<BoardVO> boardList() {
		ArrayList<BoardVO> result = null;
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.boardList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
