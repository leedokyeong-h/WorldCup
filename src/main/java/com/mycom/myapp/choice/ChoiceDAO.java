package com.mycom.myapp.choice;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import com.my.myapp.board.BoardVO;
@Repository
public class ChoiceDAO  {
	
	@Autowired
	SqlSession sqlSession;
	
	public ChoiceVO getChoice() {
		ChoiceVO one =sqlSession.selectOne("ChoiceDAO.getChoice");
		return one;
	}
	
	public ChoiceVO getChoice2() {
		ChoiceVO one =sqlSession.selectOne("ChoiceDAO.getChoice2");
		return one;
	}
}
