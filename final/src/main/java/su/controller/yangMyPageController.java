package su.controller;

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
import su.yangmypage.model.yangMypageDAO;
import su.yangmypage.model.yangMypageDTO;

@Controller
public class yangMyPageController {

	@Autowired
	private yangMypageDAO yangMyPageDao;

	public yangMypageDAO getYangMyPageDao() {
		return yangMyPageDao;
	}

	public void setYangMyPageDao(yangMypageDAO yangMyPageDao) {
		this.yangMyPageDao = yangMyPageDao;
	}

	@RequestMapping("/userPayInfo.do")
	public ModelAndView userPayInfoForm(HttpSession session) {

		String userid = (String) session.getAttribute("sid");
		List<yangMypageDTO> dto = yangMyPageDao.allPayInfo(userid);

		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("mypage/userPayInfo2");

		return mav;
	}

	@RequestMapping("/userPayAddPage.do")
	public String userPayAddPage() {

		return "mypage/userPayAdd2";
	}

	@RequestMapping("/userPayAdd.do")
	public ModelAndView userPayAdd(HttpSession session, yangMypageDTO dto) {

		List<yangMypageDTO> list = yangMyPageDao.allCardInfo();
		String cardnum = dto.getCardnum1() + "-"+dto.getCardnum2() +"-"+ dto.getCardnum3() + "-"+dto.getCardnum4();
		int j = 0;
		if (list.size() == 0) {
		
					j=0;
			}else {
				for(int i=0;i<list.size();i++){
					if(list.get(i).getCardnum().equals(cardnum)){
				j = 1;
		}}}
		ModelAndView mav = new ModelAndView();
		String msg = null;
		if (j == 0) {
			String userid = (String) session.getAttribute("sid");
			dto.setUserid(userid);
			dto.setCardnum(cardnum);
			String cardterm = dto.getCardterm1() +"/"+ dto.getCardterm2();
			dto.setCardterm(cardterm);
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
	public ModelAndView userPayUpdatePage(@RequestParam(value = "idx") int idx) {

		yangMypageDTO dto = yangMyPageDao.idxPayInfo(idx);
		String cardnum=dto.getCardnum();
		StringTokenizer tokens = new StringTokenizer(cardnum);
        
        dto.setCardnum1(tokens.nextToken("-"));
        dto.setCardnum2(tokens.nextToken("-"));
        dto.setCardnum3(tokens.nextToken("-"));
        dto.setCardnum4(tokens.nextToken("-"));
		String cardterm=dto.getCardterm();
		StringTokenizer tokens2 = new StringTokenizer(cardterm);
		dto.setCardterm1(tokens2.nextToken("/"));
		dto.setCardterm2(tokens2.nextToken("/"));
		ModelAndView mav = new ModelAndView();

		mav.addObject("dto", dto);
		mav.setViewName("mypage/userPayUpdate2");

		return mav;
	}

	@RequestMapping(value = "/cardUpdate.do", method = RequestMethod.POST)
	public ModelAndView userPayUpdate(yangMypageDTO dto, @RequestParam(value = "cardnum1") String cardnum1,
			@RequestParam(value = "cardnum2") String cardnum2, @RequestParam(value = "cardnum3") String cardnum3,
			@RequestParam(value = "cardnum4") String cardnum4, @RequestParam(value = "cardterm1") String cardterm1,
			@RequestParam(value = "cardterm2") String cardterm2) {

		String cardnum = cardnum1 +"-"+ cardnum2 + "-"+cardnum3 +"-"+ cardnum4;
		System.out.println(cardnum);
		dto.setCardnum(cardnum);
		String cardterm = cardterm1 +"/"+ cardterm2;
		dto.setCardterm(cardterm);
		int result = yangMyPageDao.userPayUpdate(dto);
		String msg = result > 0 ? "결제정보 수정 성공" : "결제정보 수정 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "userPayInfo.do");
		mav.setViewName("mypage/myPageMsg");

		return mav;
	}

	@RequestMapping("/cardDel.do")
	public ModelAndView cardDel(yangMypageDTO dto) {

		int result = yangMyPageDao.userPayDel(dto);
		String msg = result > 0 ? "결제정보 삭제 성공" : "결제정보 삭제 실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gopage", "userPayInfo.do");
		mav.setViewName("mypage/myPageMsg");

		return mav;
	}

}