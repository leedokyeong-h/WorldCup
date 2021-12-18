package com.mycom.myapp.choice;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChoiceServiceImpl implements ChoiceService{
	
	@Autowired
	ChoiceDAO choiceDAO;
	
	@Override
	public ChoiceVO getChoice() {
		return choiceDAO.getChoice();
	}
	
	@Override
	public ChoiceVO getChoice2() {
		return choiceDAO.getChoice2();
	}
}
