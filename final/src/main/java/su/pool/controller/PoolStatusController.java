package su.pool.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;
import su.pool.model.PoolMasterStatusDTO;
import su.pool.model.PoolMemberStatusDTO;
import su.pool.model.PoolStatusDAO;
import su.pool.model.*;
import su.member.model.*;

@Controller
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

	@RequestMapping("/reqToMasterPage.do")
	public ModelAndView requestToMasterPage(@RequestParam(value="idx")String idx,@RequestParam(value="cp", defaultValue="1")int cp,HttpSession session)
	{
		String id=(String)session.getAttribute("sid");

		int totalCnt=poolStatusDao.getOwnMemberTotalCnt(id);
		int aimidx=Integer.parseInt(idx);
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(id, aimidx);
			PoolMasterStatusDTO masterDto=new PoolMasterStatusDTO(aimidx, 1, id);
			
			int count=poolStatusDao.makeMemberStatus(memberDto);
			int count2=poolStatusDao.reqToMaster(masterDto);
			
			String msg=count+count2>=2?"성공":"실패";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolStatusDao.viewOwnMemberPoolList(cp,listSize,id);
			String pageStr=
				su.Page.SuPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
			
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.addObject("aimidx",aimidx);
			mav.setViewName("carpool/poolMemberReqList");
		}
		return mav;
	}
	
	@RequestMapping("/uptoMaster.do")
	public ModelAndView requestToMaster(@RequestParam(value="idx")String idx,@RequestParam(value="aimidx")String aimidx,HttpSession session)
	{
		String id=(String)session.getAttribute("sid");

		int ownidx=Integer.parseInt(idx);
		int addidx=Integer.parseInt(aimidx);
		
		List lists=poolStatusDao.getOwnPoolByIdx(ownidx);
		PoolDateDTO dto=(PoolDateDTO)lists.get(0);
		
		PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(id, addidx);
		
		int count=poolStatusDao.makeMemberStatus(memberDto);
		
		
		
		int mans=dto.getMannum();
				
		PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(id, ownidx, addidx, mans);
		
		int count2=poolStatusDao.reqToMember(memberDto2);
		
		PoolMasterStatusDTO masterDto=new PoolMasterStatusDTO(addidx, mans, id);
		
		int count3=poolStatusDao.reqToMaster(masterDto);
		
		String msg=count+count2+count3>=3?"성공":"실패";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		mav.setViewName("carpool/poolMsg");
				
		return mav;
	}
	
	@RequestMapping("/reqToMemberPage.do")
	public ModelAndView requestToMemberPage(@RequestParam(value="idx")String idx,@RequestParam(value="cp", defaultValue="1")int cp,HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMasterTotalCnt(id);
		int aimidx=Integer.parseInt(idx);
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			String msg="<타세요> 글 작성 후에 이용 가능합니다.";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolStatusDao.viewOwnMasterPoolList(cp,listSize,id);
			String pageStr=
				su.Page.SuPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.addObject("aimidx",aimidx);
			mav.setViewName("carpool/poolMasterReqList");
		}		
		return mav;
	}
	
	@RequestMapping("/upToMember.do")
	public ModelAndView requestToMember(@RequestParam(value="aimidx")int aimidx,@RequestParam(value="idx")int idx, HttpSession session)
	{
		String masterid=(String)session.getAttribute("sid");
		int addidx2=aimidx;
		int ownidx=idx;
		

		int mans=poolDao.viewEachContent(aimidx).getMannum();

		int nowmans=mans;

		List lists=poolStatusDao.getOwnPoolByIdx(aimidx);
		PoolDateDTO pDto=(PoolDateDTO)lists.get(0);
		String memberid=pDto.getUserid();
		
		String status="수락 대기 중";
		String members=memberid;

		PoolMasterStatusDTO dto=new PoolMasterStatusDTO(ownidx, masterid, mans, nowmans, status, members);

		int count=poolStatusDao.reqToMaster(dto);
		
		PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, ownidx);

		int count2=poolStatusDao.makeMemberStatus(memberDto);
			
		PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(memberid, addidx2, ownidx, mans);

		int count3=poolStatusDao.reqToMember(memberDto2);	

		
		ModelAndView mav=new ModelAndView();
		
		String msg=count+count2+count3>=3?"성공":"실패";
		mav.addObject("msg",msg);
		mav.setViewName("carpool/poolMsg");
		
		return mav;
		
	}
	
	@RequestMapping("/ownMemberPoolList")
	public ModelAndView viewOwnMemberPool(@RequestParam(value="cp", defaultValue="1")int cp, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMemberTotalCnt(id);
		int listSize=10;
		int pageSize=5;
		List<PoolDTO> list=poolStatusDao.viewOwnMemberPoolList(cp,listSize,id);
		String pageStr=
			su.Page.SuPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("carpool/poolList");
		return mav;
	}
	
	@RequestMapping("/ownMasterPoolList")
	public ModelAndView viewOwnMasterPool(@RequestParam(value="cp", defaultValue="1")int cp, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMasterTotalCnt(id);
		int listSize=10;
		int pageSize=5;
		List<PoolDTO> list=poolStatusDao.viewOwnMasterPoolList(cp, listSize, id);
		String pageStr=
			su.Page.SuPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("carpool/poolList");
		return mav;
	}
	
	@RequestMapping("/poolStatus.do")
	public ModelAndView viewPoolStatusPage(@RequestParam(value="cp", defaultValue="1")int cp, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMemReqTotalCnt(id);
		int ls=10;
		int pageSize=5;
		List<PoolDTO> memlist=poolStatusDao.viewOwnMemReqPoolList(cp, ls, id);
		
		String pageStr=
			su.Page.SuPage.makePage("poolList.do", totalCnt, ls, pageSize, cp);
		
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("memlist", memlist);
		mav.addObject("pageStr",pageStr);

		mav.setViewName("carpool/poolList");
	
		
		mav.setViewName("carpool/poolStatus");
		
		return mav;
	}
	@RequestMapping("/poolMasReqList.do")
	public ModelAndView viewPoolMasStatusPage(@RequestParam(value="cp", defaultValue="1")int cp, HttpSession session, HttpServletRequest req)
	{
		String id=(String)session.getAttribute("sid");
		
		int totalCnt2=poolStatusDao.getOwnMasReqTotalCnt(id);
		int ls2=10;
		int pageSize2=5;
		List<PoolDTO> maslist=poolStatusDao.viewOwnMasReqPoolList(cp, ls2, id);
		
		
		String pageStr2=
				su.Page.SuPage.makePage("poolMasReqList.do", totalCnt2, ls2, pageSize2, cp);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("maslist", maslist);
		mav.addObject("pageStr",pageStr2);
		
		String msgEl=(String)req.getAttribute("msgEl");
		
		if(msgEl==null||msgEl.equals("")){
		
		}else{
		mav.addObject("msgEl",msgEl);
		}
		mav.setViewName("carpool/poolMasReqList");
		
		return mav;
	}
	
	@RequestMapping("/accAll.do")
	public ModelAndView accetAllMembers(@RequestParam(value="idx")int idx, @RequestParam(value="aimidx")int aimidx, String members)
	{
		int count=poolStatusDao.accAllMembers(idx);
		
		int count2=poolStatusDao.chgAllMemStatus(idx,aimidx);
		
		String member[]=members.split("-");
		
		
		System.out.println(member.length);
		
		for(int i=0;i<member.length;i++)
		{
			System.out.println(member[i]);
		}
		
		List lists=poolDao.getPoolInfo(aimidx);
		
		for(int i=1;i<member.length;i++){
		
			
			
			MemberDTO user=poolDao.getAllUserInfo(member[i]);
			
			PoolDateDTO pDto=(PoolDateDTO)lists.get(0);
			
			PoolInfoDTO dto=new PoolInfoDTO(member[i], pDto.getPoolname(), pDto.getTermtype(), " ", user.getName(), user.getPhonenum(), user.getEmail(), user.getSex(), user.getBirth(), 1);
					
			poolStatusDao.makeCarpoolInfo(dto);
		
		}
		
		ModelAndView mav=new ModelAndView();
		
		String msg=count+count2>=2?"'성공'":"'실패'";
		
		mav.addObject("msg",msg);
		mav.setViewName("redirect:poolMasReqList.do");
		
		return mav;
	}
	
	@RequestMapping("/accOne.do")
	public ModelAndView accetOneMembers(@RequestParam(value="idx")int idx,@RequestParam(value="members")String members,@RequestParam(value="aimidx")int aimidx, HttpServletRequest req)
	{
		int count=poolStatusDao.accOneMember(idx,members);
		System.out.println("1번쿼리 수행됨");
		int count2=poolStatusDao.chgMemStatus(idx, members, aimidx);
		System.out.println("2번쿼리 수행됨");
		
		MemberDTO user=poolDao.getAllUserInfo(members);
		
		PoolDateDTO pDto=(PoolDateDTO)poolDao.getPoolInfo(aimidx).get(0);
		
		PoolInfoDTO dto=new PoolInfoDTO(members, pDto.getPoolname(), pDto.getTermtype(), " ", user.getName(), user.getPhonenum(), user.getEmail(), user.getSex(), user.getBirth(), 1);
				
		
		poolStatusDao.makeCarpoolInfo(dto);
		
		
		ModelAndView mav=new ModelAndView();
		String msgEl="";
		String msg=count+count2>=2?"'성공'":"'실패'";
		
		
		msgEl="window.alert("+msg+")";
		
		req.setAttribute("msgEl", msgEl);
		
		mav.addObject("msgEl",msgEl);
		mav.setViewName("redirect:poolMasReqList.do");
		
		return mav;
	}
	
	@RequestMapping("/delMemReq.do")
	public ModelAndView delMemReq(PoolMemberStatusDTO dto)
	{
		int count=poolStatusDao.delMemReq(dto);
		
		ModelAndView mav=new ModelAndView();
		
		String msg=count>0?"성공":"실패";
		String url="/poolStatus.do";
		
		mav.addObject("msg", msg);
		mav.addObject("url",url);
		mav.setViewName("carpool/poolMsg");
		
		return mav;
	}
	
	@RequestMapping("/delMasReq.do")
	public ModelAndView delMasReq(PoolMasterStatusDTO dto)
	{
		int count=poolStatusDao.delMasReq(dto);
		
		int count2=poolDao.poolDel(dto.getAimidx());
		
		ModelAndView mav=new ModelAndView();
		
		String msg=count+count2>1?"성공":"실패";
		String url="/poolMasReqList.do";
		
		mav.addObject("msg", msg);
		mav.addObject("url",url);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
	}
	
	@RequestMapping("/editMemMans.do")
	public ModelAndView editMemMans(PoolMemberStatusDTO dto)
	{
		int count=poolStatusDao.editMemMans(dto);
		
		System.out.println(dto.getAimidx());
		int count2=poolDao.editPoolMans(dto.getAimidx(),dto.getMans());
		
		ModelAndView mav=new ModelAndView();
		
		String msg=count+count2>1?"성공":"실패";
		String url="/poolMemReqList.do";
		
		mav.addObject("msg", msg);
		mav.addObject("url",url);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
	}
	
	@RequestMapping("/editMasMans.do")
	public ModelAndView editMasMans(PoolMasterStatusDTO dto)
	{
		int count=poolStatusDao.editMasMans(dto);
		
		System.out.println(dto.getAimidx());
		int count2=poolDao.editPoolMans(dto.getAimidx(),dto.getMans());
		
		ModelAndView mav=new ModelAndView();
		
		String msg=count+count2>1?"성공":"실패";
		String url="/poolMemReqList.do";
		
		mav.addObject("msg", msg);
		mav.addObject("url",url);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
	}
	
	
}
