package com.mycom.myapp.record;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycom.myapp.user.UserVO;

//import com.my.myapp.board.BoardVO;
@Repository
public class RecordDAO  {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertRecord(RecordVO vo) {
		int result =sqlSession.update("RecordDAO.insertRecord",vo);
		return result;
	}
	
	public List<RecordVO> getRecordList(UserVO vo){
		List<RecordVO> list = sqlSession.selectList("RecordDAO.getRecordList",vo);
		return list;
	}
	
	public int deleteRecord(int id) {
		int result =sqlSession.delete("RecordDAO.deleteRecord",id);
		return result;
	}
}
