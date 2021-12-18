package com.mycom.myapp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO BoardDAO;

	@Override
	public int insertBoard(BoardVO vo) {
		return BoardDAO.insertBoard(vo);
	}

	@Override
	public int deleteBoard(int id) {
		return BoardDAO.deleteBoard(id);
	}

	@Override
	public int updateBoard(BoardVO vo) {
		return updateBoard(vo);
	}

	@Override
	public BoardVO getBoard(int seq) {
		return BoardDAO.getBoard(seq);
	}

	@Override
	public List<BoardVO> getBoardList() {
		return BoardDAO.getBoardList();
	}
}
