package com.mycom.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.choice.ChoiceVO;
import com.mycom.myapp.record.RecordVO;
import com.mycom.myapp.user.UserVO;
import com.mycom.myapp.choice.ChoiceService;
import com.mycom.myapp.record.RecordDAO;
import com.mycom.myapp.record.RecordService;
import com.mycom.myapp.choice.ChoiceServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	ChoiceServiceImpl choiceservice;
	@Autowired
	RecordService recordservice;
	@Autowired
	RecordDAO recordDAO;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/choicelist", method = RequestMethod.GET)
	public String Choicelist(HttpSession httpSession, Model model) {
		UserVO userVO = (UserVO) httpSession.getAttribute("login");
		ChoiceVO list = choiceservice.getChoice();
		model.addAttribute("list", list);
		model.addAttribute("username",userVO.getUsername());
		return "list";
	}
	@RequestMapping(value = "/choicelist2", method = RequestMethod.GET)
	public String Choicelist2(HttpSession httpSession, Model model) {
		UserVO userVO = (UserVO) httpSession.getAttribute("login");
		ChoiceVO list = choiceservice.getChoice2();
		model.addAttribute("list", list);
		model.addAttribute("username",userVO.getUsername());
		return "list2";
	}
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost(RecordVO vo) {
		int i = recordservice.insertRecord(vo);
		if( i == 0) {
			System.out.println("데이터 추가 실패");
		}
		else {
			System.out.println("데이터 추가 성공!!!");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = recordservice.deleteRecord(id);
		if(i == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../record";
	}
	
	@RequestMapping(value = "/record", method = RequestMethod.GET)
	public String Recordlist(HttpSession httpSession, Model model) {
		UserVO userVO = (UserVO) httpSession.getAttribute("login");
		model.addAttribute("list", recordDAO.getRecordList(userVO));
		return "record";
	}
}
