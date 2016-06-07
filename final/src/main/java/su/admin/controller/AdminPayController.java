package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.csCenter.model.CsNoticeDTO;
import su.paylist.model.PayListDAO;
import su.paylist.model.PayListDTO;

@Controller
public class AdminPayController {

	@Autowired
	private PayListDAO payListDao;

	public PayListDAO getPayListDao() {
		return payListDao;
	}

	public void setPayListDao(PayListDAO payListDao) {
		this.payListDao = payListDao;
	}
	
	
	@RequestMapping("/payMentList.do")
	public ModelAndView adminPayList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=payListDao.paylisttotalCnt();
		int listSize=10;
		int pageSize=5;
		List<PayListDTO> list=payListDao.payAllList(cp,listSize);
		String pageStr=
			su.Page.SuPage.makePage("payMentList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("admin/paymentList");
		return mav;
	}
}
