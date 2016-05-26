package su.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import su.mypage.model.MypageDAO;

@Controller
public class yangVerMypageController {

	@Autowired
	private MypageDAO mypageDao;
	
	
	public MypageDAO getMypageDao() {
		return mypageDao;
	}


	public void setMypageDao(MypageDAO mypageDao) {
		this.mypageDao = mypageDao;
	}
	
	
}
