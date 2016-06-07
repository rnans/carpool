package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminComm.model.AdminCommDAO;
import su.comm.model.carpoolinfoDTO;
import su.pool.model.PoolDTO;

@Controller
public class AdminCommController {

	@Autowired
	private AdminCommDAO adCommDao;

	public AdminCommDAO getAdCommDao() {
		return adCommDao;
	}

	public void setAdCommDao(AdminCommDAO adCommDao) {
		this.adCommDao = adCommDao;
	}
	
	@RequestMapping("/memberCommList.do")
	public ModelAndView memberCommList(@RequestParam(value="cp", defaultValue="1")int cp){
		
		int totalCnt = adCommDao.commTotalCnt();
		int listSize = 15;
		int pageSize = 5;
		
		List<carpoolinfoDTO> list = adCommDao.commList(cp, listSize);
		List<carpoolinfoDTO> list2 = adCommDao.commList2();
		List<PoolDTO> list3 = adCommDao.commList3();
		
		String pageStr = su.Page.SuPage.makePage("memberCommList.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", list);
		mav.addObject("list2", list2);
		mav.addObject("list3", list3);
		
		mav.addObject("pageStr", pageStr);
		mav.setViewName("admin/communityList");
		return mav;
	}
	
}
