package su.pay.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import su.pay.model.PayDAO;
import su.pay.model.PayDTO;
import su.paylist.model.PayListDAO;
import su.paylist.model.PayListDTO;
import su.pool.model.PoolDTO;


@Controller
public class PayController {

	@Autowired
	private PayDAO payDao;
	
	public PayDAO getPayDao(){
		return payDao;
	}
	public void setPayDao(PayDAO payDao){
		this.payDao = payDao;
	}
	
	@Autowired
	private PayListDAO plDao;

	public PayListDAO getPlDao() {
		return plDao;
	}
	public void setPlDao(PayListDAO plDao) {
		this.plDao = plDao;
	}
	
	@RequestMapping("/payType.do")
	public ModelAndView payType(
			@RequestParam("idx")int idx){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("ridx",idx);
		mav.setViewName("pay/payType");
		return mav;
	}
	
	@RequestMapping("/payData.do")
	public ModelAndView dataView(String userid,
			PayDTO pDTO,HttpSession session,
			@RequestParam("ridx")String ridx){
		
		//String userid = (String)
		System.out.println("ttt="+ridx);
		userid = (String)session.getAttribute("sid");
		
		pDTO.setUserid(userid);
		System.out.println("test");
		List<PayDTO> list = payDao.payInfo(pDTO);
		System.out.println("list="+list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("ridx",ridx);
		mav.addObject("lists",list);
		mav.setViewName("pay/payData");
		return mav;
	}
	
	@RequestMapping("/cardEnroll.do")
	public ModelAndView newCardEnroll(PayDTO pDTO,HttpSession session){
		
		String userid = (String)session.getAttribute("sid");
		String cardImg = "";
		
		if(pDTO.getCardType1().equals("신한은행")){
			cardImg="img/shin.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("국민은행")){
			cardImg="img/kok.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("농협")){
			cardImg="img/nong.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("우리은행")){
			cardImg="img/woori.png";
			pDTO.setCardImg(cardImg);
		}else{
			cardImg="img/noimg.png";
			pDTO.setCardImg(cardImg);
		}
		System.out.println(cardImg);
		pDTO.setUserid(userid);
		int result = payDao.cardEnroll(pDTO);
		
		String msg = result>0?"카드등록성공":"카드등록실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("pay/payMsg");
		return mav;
	}
	/**결제정보저장*/
	@RequestMapping("/newCardEnroll.do")
	public ModelAndView newCardEnroll(PayDTO pDTO,HttpSession session,
			 PayListDTO plistDto,
			@RequestParam(value="ridx",required=false)String ridx){
		//여긴 세션값으로 가져오는 아이디 값이 들어옴

		System.out.println("idx="+ridx);
		
		String userid = (String)session.getAttribute("sid");
		String cardImg = "";
		
		if(pDTO.getCardType1().equals("신한은행")){
			cardImg="img/shin.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("국민은행")){
			cardImg="img/kok.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("농협")){
			cardImg="img/nong.png";
			pDTO.setCardImg(cardImg);
		}else if(pDTO.getCardType1().equals("우리은행")){
			cardImg="img/woori.png";
			pDTO.setCardImg(cardImg);
		}else{
			cardImg="img/noimg.png";
			pDTO.setCardImg(cardImg);
		}
		System.out.println(cardImg);
		
		//section
		
		PoolDTO pdto = plDao.payInfo(ridx);
		
		plistDto.setPay(pdto.getPay());
		plistDto.setPoolname(pdto.getPoolname());
		plistDto.setPooltype(pdto.getPooltype());
		plistDto.setStatus(pdto.getStatus());
		plistDto.setTermtype(pdto.getTermtype());
		plistDto.setUserid(pdto.getUserid());
		
		pDTO.setUserid(userid);
		int result=payDao.cardEnroll(pDTO);
		int count = plDao.payEnrollList(plistDto);

		String msg = "";
		
		if(result<1){
			msg = "카드등록이 실패하였습니다";
		}else if(count>1){
			msg = "결제가 실패하였습니다.";
		}else{
			msg = "카드등록 및 결제가 성공하였습니다.";
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("pay/payMsg");
		return mav;
	}
	
	/*@RequestMapping("/paySuccess.do")
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
	}*/
	
	/**결제정보저장*/
	@RequestMapping("/lastPay.do")
	public ModelAndView lastPay(HttpSession session,
			@RequestParam("ridx")String ridx,
			PayListDTO plistDto){
		System.out.println("hey="+ridx);
		String userid = (String)session.getAttribute("sid");
		
		PoolDTO pdto = plDao.payInfo(ridx);
		
		plistDto.setPay(pdto.getPay());
		plistDto.setPoolname(pdto.getPoolname());
		plistDto.setPooltype(pdto.getPooltype());
		plistDto.setStatus(pdto.getStatus());
		plistDto.setTermtype(pdto.getTermtype());
		plistDto.setUserid(pdto.getUserid());
		
		int count = plDao.payEnrollList(plistDto);
		
		String msg = count>0?"결제가 정상적으로 처리되었습니다.":"결제가 실패하였습니다.";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("pay/payMsg");
		return mav;
	}
}