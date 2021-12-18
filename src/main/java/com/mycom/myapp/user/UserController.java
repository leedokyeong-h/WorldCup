package com.mycom.myapp.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.board.BoardVO;
import com.mycom.myapp.choice.ChoiceServiceImpl;
import com.mycom.myapp.choice.ChoiceVO;
import com.mycom.myapp.record.RecordDAO;
import com.mycom.myapp.record.RecordService;
import com.mycom.myapp.record.RecordVO;

@Controller
@RequestMapping(value = "/login")
public class UserController {

	@Autowired
	UserServiceImpl service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		System.out.println(vo.getUserid());
		System.out.println(vo.getPassword());
		UserVO loginvo = service.getUser(vo);
		if (loginvo != null) { // 로그인 성공
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/";
		} else { // 로그인 실패
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
	@RequestMapping(value = "/signup")
	public String signUp() {		
		return "signup";
	}
	@RequestMapping(value = "/signupok", method = RequestMethod.POST)
	public String addPostOK(UserVO vo) {
		UserVO inputVO = service.getUserId(vo);
		int i = 0;
		if(inputVO == null) {
			i = service.insertUser(vo);
		}
		
		if(i == 0) {
			System.out.println("회원가입 실패");
		}
		else {
			System.out.println("회원가입 성공");
			return "redirect:/login/login";
		}
		return "redirect:/login/login";
	}
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String signupPost(UserVO vo) {
		return "mypage";
	}
	@RequestMapping(value = "/mypageok", method = RequestMethod.POST)
	public String signupPostOK(HttpSession httpSession, UserVO vo) {
		UserVO userVO = (UserVO) httpSession.getAttribute("login");
		System.out.println("///////로그인 정보//////");
		System.out.println(userVO.getUserid());
		System.out.println(userVO.getUsername());
		System.out.println(userVO.getGender());
		if(userVO != null) {
			userVO.setUsername(vo.getUsername());
			userVO.setPassword(vo.getPassword());
			userVO.setGender(vo.getGender());
			System.out.println("///////수정/////");
			System.out.println(userVO.getUserid());
			System.out.println(userVO.getUsername());
			System.out.println(userVO.getPassword());
			System.out.println(userVO.getGender());
		}
		
		int i = service.updateUser(userVO);
		if(i == 0) {
			System.out.println("데이터 수정 실패");
		}
		else {
			System.out.println("데이터 수정 성공");
		}
		return "redirect:/login/login";
	}
}
