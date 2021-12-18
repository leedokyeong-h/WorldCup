package com.mycom.myapp.user;


public interface UserService {
	public int insertUser(UserVO vo);
	public int updateUser(UserVO vo);
	public UserVO getUser(UserVO vo);
	public UserVO getUserId(UserVO vo);
}
