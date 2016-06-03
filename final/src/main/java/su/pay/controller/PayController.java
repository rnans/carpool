package su.pay.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import su.pay.model.PayDAO;
import su.pay.model.PayDTO;

@Controller
public class PayController {

	@Autowired
	private PayDAO payDao;
	
	public PayDAO getPayDao() {
		return payDao;
	}

	public void setPayDao(PayDAO payDao) {
		this.payDao = payDao;
	}

	@RequestMapping("/payType.do")
	public ModelAndView payType(
			@RequestParam("idx")int idx){
	
		System.out.println("idx="+idx);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pay/payType");
		return mav;
	}
	
	@RequestMapping("/payData.do")
	public ModelAndView dataView(String userid,
			PayDTO pDTO,HttpSession session){
		
		//String userid = (String)
		userid = (String)session.getAttribute("sid");
		
		pDTO.setUserid(userid);
		System.out.println("test");
		List<PayDTO> list = payDao.payInfo(pDTO);
		System.out.println("list="+list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",list);
		mav.setViewName("pay/payData");
		return mav;
	}
	
	@RequestMapping("/newCardEnroll.do")
	public ModelAndView newCardEnroll(PayDTO pDTO,HttpSession session){
		//여긴 세션값으로 가져오는 아이디 값이 들어옴
		String userid = (String)session.getAttribute("sid");
		String cardImg = "";
		
		if(pDTO.getCardType1().equals("신한은행")||
				pDTO.getCardType1().equals("신한카드")||
				pDTO.getCardType1().equals("신한")){
			cardImg="img/shin.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("국민은행")||
				pDTO.getCardType1().equals("국민카드")||
				pDTO.getCardType1().equals("국민")){
			cardImg="img/kok.png";
			pDTO.setCardImg(cardImg);
		}else{
			cardImg="img/noimage.png";
			pDTO.setCardImg(cardImg);
		}
		System.out.println(cardImg);
		pDTO.setUserid(userid);
		int result=payDao.cardEnroll(pDTO);

		String msg = result>0?"결제 및 카드등록이 처리되었습니다.":"결제실패하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("pay/payMsg");
		return mav;
	}
	
	@RequestMapping("/paySuccess.do")
	public ModelAndView cardSuccess(
			@RequestParam(value="cardId",required=false)String cardId){
		System.out.println(cardId);
		//pDTO.setCardImg(cardImg);
		
		List<PayDTO> listp = payDao.payFinish(cardId);
		System.out.println(listp);
		ModelAndView mav = new ModelAndView();
		mav.addObject("listp",listp);
		mav.setViewName("pay/payFinish");
		return mav;
	}
	
	@RequestMapping("/lastPay.do")
	public ModelAndView lastPay(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg","결제가 정상적으로 처리되었습니다.");
		mav.setViewName("pay/payMsg");
		return mav;
	}
	
}