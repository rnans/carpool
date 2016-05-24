package su.pool.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolMasterStatusDTO;
import su.pool.model.PoolStatusDAO;

public class PoolStatusController 
{
	
	@Autowired
	private PoolDAO poolDao;
	
	public PoolDAO getPoolDao() {
		return poolDao;
	}

	public void setPoolDao(PoolDAO poolDao) {
		this.poolDao = poolDao;
	}
	
	@Autowired
	private PoolStatusDAO poolStatusDao;
	
	public PoolStatusDAO getPoolStatusDao() {
		return poolStatusDao;
	}

	public void setPoolStatusDao(PoolStatusDAO poolStatusDao) {
		this.poolStatusDao = poolStatusDao;
	}

	@RequestMapping("/reqToMember.do")
	public ModelAndView requestToMember(@RequestParam(value="idx")int idx, @RequestParam(value="memberid")String memberid, HttpSession session)
	{
		String masterid=(String)session.getAttribute("sid");
		int addidx=idx;
		
		int i_mans=poolDao.viewEachContent(addidx).getMannum();
		String mans=""+i_mans;
		
		int i_nowmans=0;
		i_nowmans++;
		String nowmans=""+i_nowmans;
				
		String status="예약 요청 중";
		String members=memberid;
	
		
		PoolMasterStatusDTO dto=new PoolMasterStatusDTO(addidx, masterid, mans, nowmans, status, members);
		
		int count=poolStatusDao.reqToMember(dto);
		
		ModelAndView mav=new ModelAndView();
		
		return mav;
		
	}
	
}
