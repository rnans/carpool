package su.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.adminPool.model.AdminUserPoolDTO;
import su.csCenter.model.CsNoticeDTO;
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;
import su.wishpool.model.WishpoolListDAO;
import su.wishpool.model.WishpoolListDTO;


@Controller
public class WishpoolController {

	@Autowired
	private WishpoolListDAO wishpoollistDao;

	public WishpoolListDAO getWishpoollistDao() {
		return wishpoollistDao;
	}

	public void setWishpoolListDao(WishpoolListDAO wishpoolListDao) {
		wishpoollistDao = wishpoollistDao;
	}
	
	@Autowired
	private UploadDAO uploadDao;
	
	public UploadDAO getUploadDao() {
		return uploadDao;
	}

	public void setUploadDao(UploadDAO uploadDao) {
		this.uploadDao = uploadDao;
	}

	@RequestMapping("/wishPoolList.do")
	public String wishpoollist(){
		return "wishpool/wishpoolList2";
	}
	
	 
	  @RequestMapping("/wishPool.do")
		public ModelAndView wishList(@RequestParam(value="cp",defaultValue="1")int cp,
				HttpSession session){
			int totalCnt = wishpoollistDao.wishpoolTotalCnt();
			int listSize = 10;
			int pageSize = 5;
			
			String id=(String)session.getAttribute("sid");
			
			ModelAndView mav = new ModelAndView();
			List<WishpoolListDTO> list = wishpoollistDao.wishList(cp, listSize);
			String pageStr = su.Page.SuPage.makePage("wishPoolList.do", totalCnt, listSize, pageSize, cp);
			
			List<UploadDTO> dto2=uploadDao.imgFind(id);
			mav.addObject("dto7",dto2);
			
			
			mav.addObject("lists", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("wishpool/wishpoolList2");
			
			return mav;
		}	
	  

	
	
}
