package com.example.shopping.service;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.shopping.dao.IBoardMapper;
import com.example.shopping.paging.PageVO;
import com.example.shopping.vo.BoardVO;
import com.example.shopping.vo.CommentVO;

@Service
public class BoardService implements IBoardService {

	@Autowired
	IBoardMapper mapper;
	
	@Override
	public List<BoardVO> listBoard(PageVO vo) {
		
		return mapper.listBoard(vo);
	}


	@Override
	public void plusReadcount(int num) {
		mapper.plusReadcount(num);
		
	}

	@Override
	public void insert(BoardVO vo) {
		mapper.insert(vo);
		
	}

	@Override
	public BoardVO getBoard(int num) {
		
		return mapper.getBoard(num);
	}

	@Override
	public void delete(int num) {
		mapper.delete(num);
		
	}

	@Override
	public void update(BoardVO vo) {
		mapper.update(vo);
		
	}


	@Override
	public int allList() {
	
		return mapper.allList();
	}


	@Override
	public void insertComment(CommentVO vo) {
		mapper.insertComment(vo);
		
	}


	@Override
	public void deleteComment(int cno) {
		mapper.deleteComment(cno);
		
	}


	@Override
	public List<CommentVO> getComment(int bno) {
	
		return mapper.getComment(bno);
	}

}
