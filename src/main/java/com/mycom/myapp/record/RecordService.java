package com.mycom.myapp.record;

import java.util.List;

import com.mycom.myapp.user.UserVO;

public interface RecordService {

	public int insertRecord(RecordVO vo);
	public int deleteRecord(int id);
	public List<RecordVO> getRecordList(UserVO vo);
}
