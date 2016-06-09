package su.pool.controller;

import java.util.ArrayList;
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
import su.pool.model.PoolDateDTO;
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

	@RequestMapping("/upToMasterShort.do")
	public ModelAndView requestToMasterShort(@RequestParam(value="idx")String idx,HttpSession session)
	{
		String memberid=(String)session.getAttribute("sid");

		int totalCnt=poolStatusDao.getOwnMemberTotalCnt(memberid);
		int aimidx=Integer.parseInt(idx);
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, aimidx);
			PoolMasterStatusDTO masterDto=new PoolMasterStatusDTO(aimidx, 1, memberid);
			
			int count=poolStatusDao.makeMemberStatus(memberDto);
			int count2=poolStatusDao.reqToMaster(masterDto);
			
			String msg=count+count2>=2?"성공":"실패";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			List lists=poolStatusDao.getOwnPoolByIdx(aimidx);
			PoolDateDTO ownDto=(PoolDateDTO)lists.get(0);
			
			System.out.println("2. 자기글 가져오기 수행됨");
			
			PoolDateDTO aimDto=new PoolDateDTO();
			
			aimDto.setUserid(memberid);
			aimDto.setMannum(ownDto.getMannum());
			aimDto.setStarttime(ownDto.getStarttime());
			System.out.println(ownDto.getStarttime());
			aimDto.setGender(ownDto.getGender());
			aimDto.setSmoking(ownDto.getSmoking());
			aimDto.setSlat(Math.round(ownDto.getSlat()*1000000)/1000000.0);
			aimDto.setSlng(Math.round(ownDto.getSlng()*1000000)/1000000.0);
			aimDto.setElat(Math.round(ownDto.getElat()*1000000)/1000000.0);
			aimDto.setElng(Math.round(ownDto.getElng()*1000000)/1000000.0);
						
			List ownLists=poolStatusDao.getMemShortMatch(aimDto);
			ArrayList<PoolDateDTO> ownList=new ArrayList<PoolDateDTO>();
			
			System.out.println("3. 매칭된 글 찾기 수행됨");
			
			
			
			if(ownLists.isEmpty())
			{
				mav.addObject("msg","일치하는 <탈래요> 글이 없습니다.");
				System.out.println("목록 없음");
			}
			else
			{
				int mans=ownDto.getMannum();
				int nowmans=mans;
				String masterid=ownDto.getUserid();
				
				String status="수락 대기 중";
				String members=memberid;
				System.out.println("목록 있음");
				
				for(int i=0;i<ownLists.size();i++){
				
					ownList.add((PoolDateDTO)ownLists.get(i));
										
					PoolMasterStatusDTO dto=new PoolMasterStatusDTO(aimidx, masterid, mans, nowmans, status, members);
	
					int count=poolStatusDao.reqToMaster(dto);
					
					PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, aimidx);
	
					int count2=poolStatusDao.makeMemberStatus(memberDto);
						
					PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(memberid, ownList.get(i).getIdx(), aimidx, mans);
	
					int count3=poolStatusDao.reqToMember(memberDto2);	
					
					String msg=count+count2+count3>=3?"성공":"실패";
					
					System.out.println(msg);
				}
				
				mav.addObject("msg","성공");
				mav.setViewName("carpool/poolMsg");
				
			}
			
		
		}
		return mav;
	}	
	
	@RequestMapping("/upToMasterLong.do")
	public ModelAndView requestToMasterLong(@RequestParam(value="idx")String idx,HttpSession session)
	{
		String memberid=(String)session.getAttribute("sid");

		int totalCnt=poolStatusDao.getOwnMemberTotalCnt(memberid);
		int aimidx=Integer.parseInt(idx);
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, aimidx);
			PoolMasterStatusDTO masterDto=new PoolMasterStatusDTO(aimidx, 1, memberid);
			
			int count=poolStatusDao.makeMemberStatus(memberDto);
			int count2=poolStatusDao.reqToMaster(masterDto);
			
			String msg=count+count2>=2?"성공":"실패";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			List lists=poolStatusDao.getOwnPoolByIdx(aimidx);
			PoolDateDTO ownDto=(PoolDateDTO)lists.get(0);
			
			System.out.println("2. 자기글 가져오기 수행됨");
			
			PoolDateDTO aimDto=new PoolDateDTO();
			
			aimDto.setUserid(memberid);
			aimDto.setMannum(ownDto.getMannum());
			aimDto.setStarttime(ownDto.getStarttime());
			System.out.println(ownDto.getStarttime());
			aimDto.setGender(ownDto.getGender());
			aimDto.setSmoking(ownDto.getSmoking());
			aimDto.setSlat(Math.round(ownDto.getSlat()*1000000)/1000000.0);
			aimDto.setSlng(Math.round(ownDto.getSlng()*1000000)/1000000.0);
			aimDto.setElat(Math.round(ownDto.getElat()*1000000)/1000000.0);
			aimDto.setElng(Math.round(ownDto.getElng()*1000000)/1000000.0);
			aimDto.setStartdate(ownDto.getStartdate());
			aimDto.setEnddate(ownDto.getEnddate());
			
			String arg=ownDto.getDays();
			
			String rtnDays = new String();
			
			  for (int i=0 ; i<arg.length(); i++){
				   
				   
				   rtnDays = "%"+ arg.charAt(i);
				   if(i == arg.length()-1){
				    
				     rtnDays = "%"+arg.charAt(i)+"%";
				    
				    }
				   
			  }
		
			
			aimDto.setDays(rtnDays);
			
			List ownLists=poolStatusDao.getMemLongMatch(aimDto);
			ArrayList<PoolDateDTO> ownList=new ArrayList<PoolDateDTO>();
			
			System.out.println("3. 매칭된 글 찾기 수행됨");
			
			
			
			if(ownLists.isEmpty())
			{
				mav.addObject("msg","일치하는 <탈래요> 글이 없습니다.");
				System.out.println("목록 없음");
			}
			else
			{
				int mans=ownDto.getMannum();
				int nowmans=mans;
				String masterid=ownDto.getUserid();
				
				String status="수락 대기 중";
				String members=memberid;
				System.out.println("목록 있음");
				
				for(int i=0;i<ownLists.size();i++){
				
					ownList.add((PoolDateDTO)ownLists.get(i));
										
					PoolMasterStatusDTO dto=new PoolMasterStatusDTO(aimidx, masterid, mans, nowmans, status, members);
	
					int count=poolStatusDao.reqToMaster(dto);
					
					PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, aimidx);
	
					int count2=poolStatusDao.makeMemberStatus(memberDto);
						
					PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(memberid, ownList.get(i).getIdx(), aimidx, mans);
	
					int count3=poolStatusDao.reqToMember(memberDto2);	
					
					String msg=count+count2+count3>=3?"성공":"실패";
					
					System.out.println(msg);
				}
				
				mav.addObject("msg","성공");
				mav.setViewName("carpool/poolMsg");
				
			}
			
		
		}
		return mav;
	}	
	
	@RequestMapping("/upToMemberShort.do")
	public ModelAndView requestToMember(@RequestParam(value="idx")int idx, HttpSession session)
	{
		String masterid=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMasterTotalCnt(masterid);
		
		System.out.println("1. 전체 가져오기 수행됨");
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			String msg="<타세요> 글 작성 후에 이용 가능합니다.";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			int ownidx=idx;
			
			List lists=poolStatusDao.getOwnPoolByIdx(ownidx);
			PoolDateDTO ownDto=(PoolDateDTO)lists.get(0);
			
			System.out.println("2. 자기글 가져오기 수행됨");
			
			PoolDateDTO aimDto=new PoolDateDTO();
			
			aimDto.setUserid(masterid);
			aimDto.setMannum(ownDto.getMannum());
			aimDto.setStarttime(ownDto.getStarttime());
			System.out.println(ownDto.getStarttime());
			aimDto.setGender(ownDto.getGender());
			aimDto.setSmoking(ownDto.getSmoking());
			aimDto.setSlat(Math.round(ownDto.getSlat()*1000000)/1000000.0);
			aimDto.setSlng(Math.round(ownDto.getSlng()*1000000)/1000000.0);
			aimDto.setElat(Math.round(ownDto.getElat()*1000000)/1000000.0);
			aimDto.setElng(Math.round(ownDto.getElng()*1000000)/1000000.0);
			
			
			System.out.println(aimDto.getSlat());
			System.out.println(aimDto.getSlng());
			System.out.println(aimDto.getElat());
			System.out.println(aimDto.getElng());
			
			List ownLists=poolStatusDao.getMasShortMatch(aimDto);
			ArrayList<PoolDateDTO> ownList=new ArrayList<PoolDateDTO>();
			

			System.out.println("3. 매칭된 글 찾기 수행됨");
			
			
			
			if(ownLists.isEmpty())
			{
				mav.addObject("msg","일치하는 <타세요> 글이 없습니다.");
				System.out.println("목록 없음");
			}
			else
			{
				int mans=ownDto.getMannum();
				int nowmans=mans;
				String memberid=ownDto.getUserid();
				
				String status="수락 대기 중";
				String members=memberid;
				System.out.println("목록 있음");
				
				for(int i=0;i<ownLists.size();i++){
				
					ownList.add((PoolDateDTO)ownLists.get(i));
					
					System.out.println(ownList.get(0).getUserid());
					
					PoolMasterStatusDTO dto=new PoolMasterStatusDTO(ownList.get(i).getIdx(), masterid, mans, nowmans, status, members);
	
					int count=poolStatusDao.reqToMaster(dto);
					
					PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, ownList.get(i).getIdx());
	
					int count2=poolStatusDao.makeMemberStatus(memberDto);
						
					PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(memberid, ownidx, ownList.get(i).getIdx(), mans);
	
					int count3=poolStatusDao.reqToMember(memberDto2);	
					
					String msg=count+count2+count3>=3?"성공":"실패";
					
					System.out.println(msg);
				}
				
				mav.addObject("msg","성공");
				mav.setViewName("carpool/poolMsg");
				
			}
			
			
		}	
		
		return mav;
		
	}
	
	@RequestMapping("/upToMemberLong.do")
	public ModelAndView requestToMemberLong(@RequestParam(value="idx")int idx, HttpSession session)
	{
		String masterid=(String)session.getAttribute("sid");
		
		int totalCnt=poolStatusDao.getOwnMasterTotalCnt(masterid);
		
		System.out.println("1. 전체 가져오기 수행됨");
		
		ModelAndView mav=new ModelAndView();
		
		if(totalCnt==0)
		{
			String msg="<타세요> 글 작성 후에 이용 가능합니다.";
			mav.addObject("msg",msg);
			mav.setViewName("carpool/poolMsg");
		}
		else
		{
			int ownidx=idx;
			
			List lists=poolStatusDao.getOwnPoolByIdx(ownidx);
			PoolDateDTO ownDto=(PoolDateDTO)lists.get(0);
			
			System.out.println("2. 자기글 가져오기 수행됨");
			
			PoolDateDTO aimDto=new PoolDateDTO();
			
			aimDto.setUserid(masterid);
			aimDto.setMannum(ownDto.getMannum());
			aimDto.setStarttime(ownDto.getStarttime());
			System.out.println(ownDto.getStarttime());
			aimDto.setGender(ownDto.getGender());
			aimDto.setSmoking(ownDto.getSmoking());
			aimDto.setSlat(Math.round(ownDto.getSlat()*1000000)/1000000.0);
			aimDto.setSlng(Math.round(ownDto.getSlng()*1000000)/1000000.0);
			aimDto.setElat(Math.round(ownDto.getElat()*1000000)/1000000.0);
			aimDto.setElng(Math.round(ownDto.getElng()*1000000)/1000000.0);
			aimDto.setStartdate(ownDto.getStartdate());
			aimDto.setEnddate(ownDto.getEnddate());
			
			String arg=ownDto.getDays();
			
			String rtnDays = new String();
			
			  for (int i=0 ; i<arg.length(); i++){
				   
				   
				   rtnDays = "%"+ arg.charAt(i);
				   if(i == arg.length()-1){
				    
				     rtnDays = "%"+arg.charAt(i)+"%";
				    
				    }
				   
			  }
		
			
			aimDto.setDays(rtnDays);
			

			List ownLists=poolStatusDao.getMasLongMatch(aimDto);
			ArrayList<PoolDateDTO> ownList=new ArrayList<PoolDateDTO>();
			

			System.out.println("3. 매칭된 글 찾기 수행됨");
			
			
			
			if(ownLists.isEmpty())
			{
				mav.addObject("msg","일치하는 <타세요> 글이 없습니다.");
				System.out.println("목록 없음");
			}
			else
			{
				int mans=ownDto.getMannum();
				int nowmans=mans;
				String memberid=ownDto.getUserid();
				
				String status="수락 대기 중";
				String members=memberid;
				System.out.println("목록 있음");
				
				for(int i=0;i<ownLists.size();i++){
				
					ownList.add((PoolDateDTO)ownLists.get(i));
					
					System.out.println(ownList.get(0).getUserid());
					
					PoolMasterStatusDTO dto=new PoolMasterStatusDTO(ownList.get(i).getIdx(), masterid, mans, nowmans, status, members);
	
					int count=poolStatusDao.reqToMaster(dto);
					
					PoolMemberStatusDTO memberDto=new PoolMemberStatusDTO(memberid, ownList.get(i).getIdx());
	
					int count2=poolStatusDao.makeMemberStatus(memberDto);
						
					PoolMemberStatusDTO memberDto2=new PoolMemberStatusDTO(memberid, ownidx, ownList.get(i).getIdx(), mans);
	
					int count3=poolStatusDao.reqToMember(memberDto2);	
					
					String msg=count+count2+count3>=3?"성공":"실패";
					
					System.out.println(msg);
				}
				
				mav.addObject("msg","성공");
				mav.setViewName("carpool/poolMsg");
				
			}
			
			
		}	
		
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
			su.Page.SuPage.makePage("poolStatus.do", totalCnt, ls, pageSize, cp);
		
	
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
