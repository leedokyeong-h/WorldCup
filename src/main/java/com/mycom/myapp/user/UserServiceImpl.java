package com.mycom.myapp.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO UserDAO;

//	@Override
//	public int insertBoard(BoardVO vo) {
//		return BoardDAO.insertBoard(vo);
//	}
//
//	@Override
//	public int deleteBoard(int id) {
//		return BoardDAO.deleteBoard(id);
//	}
//
//	@Override
//	public int updateBoard(BoardVO vo) {
//		return updateBoard(vo);
//	}

	@Override
	public int insertUser(UserVO vo) {
		// TODO Auto-generated method stub
		return UserDAO.insertUser(vo);
	}

	@Override
	public UserVO getUserId(UserVO vo) {
		// TODO Auto-generated method stub
		return UserDAO.getUserId(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return UserDAO.getUser(vo);
	}

	@Override
	public int updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		return UserDAO.updateUser(vo);
	}

}
