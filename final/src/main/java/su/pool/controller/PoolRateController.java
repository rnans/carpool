package su.pool.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.*;

@Controller
public class PoolRateController {

	@Autowired
	private PoolRateDAO poolRateDao;

	public PoolRateDAO getPoolRateDao() {
		return poolRateDao;
	}

	public void setPoolRateDao(PoolRateDAO poolRateDao) {
		this.poolRateDao = poolRateDao;
	}
	
	
	
	public PoolRateController() {
		super();
	}

	@RequestMapping("/rateWrite.do")
	public ModelAndView writeRate(PoolRateDTO dto, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		String name=(String)session.getAttribute("sname");
		
		List res=poolRateDao.checkRate(id, dto.getAimid());
		
		ModelAndView mav=new ModelAndView();
		String msg="";
		
		
		if(res.isEmpty())
		{
		
		dto.setUserid(id);
		dto.setUsername(name);
		
		int count=poolRateDao.rateWrite(dto);
		
		msg=count>0?"성공":"실패";
		
		
		
		mav.addObject("msg",msg);
		}
		else{
		
			msg="이미 평가한 사용자입니다!";
			
			mav.addObject("msg",msg);
		}
		mav.setViewName("/carpool/msg");
		
		
		return mav;
	}
	
	@RequestMapping("/rateDel.do")
	public ModelAndView delRate(int idx)
	{
		int count=poolRateDao.rateDel(idx);
		
		String msg=count>0?"성공":"실패";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		
		mav.setViewName("carpool/msg");
		
		return mav;
	}
	
	@RequestMapping("/rateEdit.do")
	public ModelAndView rateEdit(PoolRateDTO dto)
	{
		
		int count=poolRateDao.rateEdit(dto);
		
		String msg=count>0?"성공":"실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("carpool/msg");
		return mav;
	}
}
