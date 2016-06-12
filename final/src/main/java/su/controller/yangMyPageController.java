package su.controller;

import java.sql.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import su.member.model.MemberDTO;
import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;
import su.paylist.model.PayListDTO;
import su.pool.model.PoolDTO;
import su.pool.model.PoolRateDTO;
import su.upload.model.UploadDAO;
import su.upload.model.UploadDTO;
import su.wishpool.model.WishpoolListDTO;
import su.yangmypage.model.yangMypageDAO;
import su.yangmypage.model.yangMypageDTO;

@Controller
public class yangMyPageController {

	private static final int String = 0;
	private static final int ArrayList = 0;
	@Autowired
	private yangMypageDAO yangMyPageDao;

	public yangMypageDAO getYangMyPageDao() {
		return yangMyPageDao;
	}

	public void setYangMyPageDao(yangMypageDAO yangMyPageDao) {
		this.yangMyPageDao = yangMyPageDao;
	}

	@Autowired
	private UploadDAO uploadDao;

	public UploadDAO getUploadDao() {
		return uploadDao;
	}

	public void setUploadDao(UploadDAO uploadDao) {
		this.uploadDao = uploadDao;
	}

	@RequestMapping("/userPayInfo.do")
	public ModelAndView userPayInfoForm(HttpSession session) {

		String userid = (String) session.getAttribute("sid");
		List<yangMypageDTO> dto = yangMyPageDao.allPayInfo(userid);

		List<UploadDTO> dto2 = uploadDao.imgFind(userid);
		for(int i=0;i<dto.size();i++){
			String cardNum=dto.get(i).getCardname();
			for(int j=0;j<4;j++){
				StringTokenizer tokens=new StringTokenizer(cardNum);
		
			}
		}
		ModelAndView mav = new ModelAndView();

		mav.addObject("dto2", dto2);

		mav.addObject("dto", dto);
		mav.setViewName("mypage/userPayInfo2");

		return mav;
	}

	@RequestMapping("/userPayAddPage.do")
	public String userPayAddForm() {

		return "mypage/userPayAdd2";
	}

	@RequestMapping("/userPayAdd.do")
	public ModelAndView userPayAdd(HttpSession session, yangMypageDTO dto) {

		List<yangMypageDTO> list = yangMyPageDao.allCardInfo();
		String userid = (String) session.getAttribute("sid");
		int j = 0;
		if (list.size() == 0) {

			j = 0;
		} else {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getCardnum().equals(dto.getCardnum())) {
					j = 1;
				}
			}
		}
		ModelAndView mav = new ModelAndView();
		String msg = null;
		if (j == 0) {

			String cardImg = "";

			if (dto.getCardtype1().equals("신한")) {
				cardImg = "img/shin.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("국민")) {
				cardImg = "img/kok.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("농협")) {
				cardImg = "img/nong.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("우리")) {
				cardImg = "img/woori.png";
				dto.setCardimg(cardImg);
			} else {
				cardImg = "img/noimg.png";
				dto.setCardimg(cardImg);
			}

			dto.setUserid(userid);
			int result = yangMyPageDao.userPayAdd(dto);
			msg = result > 0 ? "결제정보 등록 성공" : "결제정보 등록 실패";
			mav.addObject("msg", msg);
			mav.addObject("gopage", "userPayInfo.do");
			mav.setViewName("mypage/userPayAddMsg");
		} else {
			msg = "이미 등록된 카드번호 입니다.";
			mav.addObject("dto", dto);
			mav.addObject("msg", msg);
			mav.setViewName("mypage/userPayAdd2");
		}
		return mav;
	}

	@RequestMapping(value = "/cardUpdate.do", method = RequestMethod.GET)
	public ModelAndView userPayUpdateForm(@RequestParam(value = "idx") int idx) {

		yangMypageDTO dto = yangMyPageDao.idxPayInfo(idx);
		String cardnum = dto.getCardnum();
		StringTokenizer tokens = new StringTokenizer(cardnum);

		dto.setCardnum1(tokens.nextToken(","));
		dto.setCardnum2(tokens.nextToken(","));
		dto.setCardnum3(tokens.nextToken(","));
		dto.setCardnum4(tokens.nextToken(","));
		String cardterm = dto.getCardterm();
		StringTokenizer tokens2 = new StringTokenizer(cardterm);
		dto.setCardterm1(tokens2.nextToken(","));
		dto.setCardterm2(tokens2.nextToken(","));
		ModelAndView mav = new ModelAndView();

		mav.addObject("dto", dto);
		mav.setViewName("mypage/userPayUpdate2");

		return mav;
	}

	@RequestMapping(value = "/cardUpdate.do", method = RequestMethod.POST)
	public ModelAndView userPayUpdate(yangMypageDTO dto, HttpSession session,
			@Param(value = "fcardnum") String fcardnum) {

		List<yangMypageDTO> list = yangMyPageDao.allCardInfo();
		String userid = (String) session.getAttribute("sid");
		int j = 0;
		if (list.size() == 0) {

			j = 0;
		} else {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getCardnum().equals(dto.getCardnum()) && !(fcardnum.equals(dto.getCardnum()))) {
					j = 1;
				}
			}
		}
		ModelAndView mav = new ModelAndView();
		String msg = null;
		if (j == 0) {

			String cardImg = "";

			if (dto.getCardtype1().equals("신한")) {
				cardImg = "img/shin.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("국민")) {
				cardImg = "img/kok.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("농협")) {
				cardImg = "img/nong.png";
				dto.setCardimg(cardImg);
			} else if (dto.getCardtype1().equals("우리")) {
				cardImg = "img/woori.png";
				dto.setCardimg(cardImg);
			} else {
				cardImg = "img/noimg.png";
				dto.setCardimg(cardImg);
			}

			dto.setUserid(userid);
			int result = yangMyPageDao.userPayUpdate(dto);
			msg = result > 0 ? "결제정보 수정 성공" : "결제정보 수정 실패";
			mav.addObject("msg", msg);
			mav.addObject("gopage", "userPayInfo.do");
			mav.setViewName("mypage/yangMyPageMsg");
		} else {
			msg = "이미 등록된 카드번호 입니다.";
			mav.addObject("dto", dto);
			mav.addObject("msg", msg);
			mav.setViewName("mypage/userPayAdd2");
		}

		return mav;
	}

	@RequestMapping("/cardDel.do")
	public ModelAndView cardDel(yangMypageDTO dto) {

		int result = yangMyPageDao.userPayDel(dto);
		String msg = result > 0 ? "결제정보 삭제 성공" : "결제정보 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "userPayInfo.do");
		mav.setViewName("mypage/yangMyPageMsg");

		return mav;
	}

	@RequestMapping("/reservationList.do")
	public ModelAndView reservationList(HttpSession session) {

		String userid = (String) session.getAttribute("sid");
		List<PoolDTO> lists = yangMyPageDao.reservationList(userid);
		List<UploadDTO> dto2 = uploadDao.imgFind(userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", lists);
		mav.addObject("dto2", dto2);
		mav.setViewName("mypage/reservationList");

		return mav;
	}

	@RequestMapping("/rateView.do")
	public ModelAndView rateView(HttpSession session) {

		String userid = (String) session.getAttribute("sid");
		List<PoolRateDTO> get = yangMyPageDao.rateGetView(userid);
		List<PoolRateDTO> set = yangMyPageDao.rateSetView(userid);
		List<UploadDTO> dto2 = uploadDao.imgFind(userid);

		ModelAndView mav = new ModelAndView();
		mav.addObject("dto2", dto2);
		mav.addObject("get", get);
		mav.addObject("set", set);
		mav.setViewName("mypage/rateView");

		return mav;
	}

	@RequestMapping("/useList.do")
	public ModelAndView useList(HttpSession session, String sid) {

		String userid1 = (String) session.getAttribute("sid");
		List<PayListDTO> list = yangMyPageDao.useList(userid1);
		List<UploadDTO> dto2 = uploadDao.imgFind(userid1);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("dto2", dto2);
		mav.setViewName("mypage/useList2");

		return mav;
	}

	@RequestMapping("/wishPoolList.do")
	public ModelAndView listWish(HttpSession session) {

		String id = (String) session.getAttribute("sid");
		List<WishpoolListDTO> list = yangMyPageDao.listWish(id);
		List<UploadDTO> dto2 = uploadDao.imgFind(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", list);
		mav.addObject("dto2", dto2);
		mav.setViewName("wishpool/wishpoolList2");

		return mav;
	}

	@RequestMapping("/wishDel.do")
	public ModelAndView wishDel(@Param(value = "idx") String idx) {

		ModelAndView mav = new ModelAndView();

		String msg = "삭제 성공";
		if (idx == null) {
			msg = "삭제할 항목이 없습니다.";
		} else {
			StringTokenizer tokens = new StringTokenizer(idx);

			boolean result = true;
			while (result) {
				try {

					int del = yangMyPageDao.wishDel(tokens.nextToken(","));

					if (!(del == 1)) {
						msg = "삭제 실패";
					}
				} catch (Exception e) {

					result = false;
				}
			}
		}
		mav.addObject("msg", msg);
		mav.addObject("gopage", "wishPoolList.do");
		mav.setViewName("mypage/yangMyPageMsg");

		return mav;
	}
	
	@RequestMapping(value = "/rateUpdate.do", method = RequestMethod.GET)
	public ModelAndView rateUpdateForm(PoolRateDTO dto,HttpSession session){
		
		PoolRateDTO list=yangMyPageDao.rateIdx(dto);
		String id = (String) session.getAttribute("sid");
		List<UploadDTO> dto2 = uploadDao.imgFind(id);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto2", dto2);
		mav.addObject("list", list);
		mav.setViewName("mypage/rateUpdate");
		
		return mav;
	}
	
	@RequestMapping(value = "/rateUpdate.do", method = RequestMethod.POST)
	public ModelAndView rateUpdate(PoolRateDTO dto){
		
		int result = yangMyPageDao.rateUpdate(dto);
		String msg=result>0?"수정 성공":"수정 실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "rateView.do");
		mav.setViewName("mypage/yangMyPageMsg");
		
		return mav;
	}
}