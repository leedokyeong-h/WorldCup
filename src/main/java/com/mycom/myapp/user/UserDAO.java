package com.mycom.myapp.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.mycom.myapp.board.BoardVO;


@Repository
public class UserDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertUser(UserVO vo) {
		int count = sqlSession.insert("User.insertUser", vo);
		return count;
	}

	
	public UserVO getUser(UserVO vo) {
		UserVO one = sqlSession.selectOne("User.getUser", vo);
		return one;
	}
	public UserVO getUserId(UserVO vo) {
		UserVO one = sqlSession.selectOne("User.getUserId", vo);
		return one;
	}
	public int updateUser(UserVO vo) {
		int count = sqlSession.update("User.updateUser", vo);
		return count;
	}
	
}
