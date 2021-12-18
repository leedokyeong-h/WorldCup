package com.mycom.myapp.record;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycom.myapp.user.UserVO;

@Service
public class RecordServiceImpl implements RecordService{
	
	@Autowired
	RecordDAO recordDAO;
	@Override
	public int insertRecord(RecordVO vo) { 
	return recordDAO.insertRecord(vo); 
	}
	@Override
	public int deleteRecord(int id) {
		return recordDAO.deleteRecord(id);
	}
	@Override
	public List<RecordVO> getRecordList(UserVO vo){ 
		return recordDAO.getRecordList(vo); 
	}

}
