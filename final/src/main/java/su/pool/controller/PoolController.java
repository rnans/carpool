package su.pool.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;
import su.member.model.*;

@Controller
public class PoolController 
{
	@Autowired
	private PoolDAO poolDao;
	
	public PoolDAO getPoolDao() {
		return poolDao;
	}

	public void setPoolDao(PoolDAO poolDao) {
		this.poolDao = poolDao;
	}

	@RequestMapping("/poolMain.do")
	public String viewMainpage()
	{
		return "carpool/poolMain";
	}
	
	@RequestMapping("/poolMemberAdd.do")
	public ModelAndView viewMasterAddPage(HttpSession session)
	{
		String userid=(String)session.getAttribute("sid");		
		

		ModelAndView mav=new ModelAndView();
		
		
		try
		{
			MemberDTO dto=poolDao.getAllUserInfo(userid);
		
			mav.setViewName("carpool/poolMemberAdd01");
			mav.addObject("dto",dto);
			return mav;
		
		}
		catch(Exception e)
		{
			String msg="로그인 후에 이용 가능합니다.";
			mav.setViewName("/carpool/poolMsg");
			mav.addObject("msg",msg);
			return mav;
		}
		
	}
	

	@RequestMapping("/poolAdd.do")
	public String viewCarpoolAddPage()
	{
		return "carpool/poolAdd";
	}
	
	@RequestMapping("/poolStatus.do")
	public String viewPoolStatusPage()
	{
		return "carpool/poolStatus";
	}
	
	@RequestMapping("/poolMemberAdd02.do")
	public String viewMemberAddPage2()
	{
		return "carpool/poolMemberAdd02";
	}
	
	@RequestMapping("/poolMemberAdd03.do")
	public ModelAndView viewMemberAddPage3(HttpServletRequest req, HttpSession session)
	{
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String route=req.getParameter("route");
		
		HashMap<String, String> data=new HashMap<String, String>();
		
		data.put("aim", aim);
		data.put("startspot", startspot);
		data.put("endspot", endspot);
		data.put("route", route);
		data.put("userid", (String)session.getAttribute("sid"));		
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMemberAdd03");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMemberAdd04.do", method=RequestMethod.GET)
	public ModelAndView viewMemberAddPage4(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String type=req.getParameter("type");
		String pay=req.getParameter("pay");
		
		String sh=req.getParameter("sh");
		
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
		}
				
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("smi");
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);
		data.put("type", type);
		data.put("pay", pay);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMemberAdd04");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMemberAdd04.do", method=RequestMethod.POST)
	public ModelAndView viewMemberAddPage4post(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String type=req.getParameter("type");
		
		String pay=req.getParameter("pay");
		
		String lh=req.getParameter("lh");
		int h=Integer.parseInt(lh);
		
		if(req.getParameter("lapm").equals("오후"))
		{
			h+=12;
		}
		
		String starttime=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd")+" "+h+":"+req.getParameter("lmi");
		String startdate=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd");
		String enddate=req.getParameter("ley")+'-'+req.getParameter("lem")+'-'+req.getParameter("led");
		String days=req.getParameter("mon")+req.getParameter("tue")+req.getParameter("wed")+req.getParameter("thu")+req.getParameter("fri")+req.getParameter("sat")+req.getParameter("sun");
		
		days=days.replace("null", "");
	
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);
		data.put("pay",pay);
		data.put("type", type);
		data.put("startdate",startdate);
		data.put("enddate",enddate);
		data.put("days", days);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMemberAdd04");
		
		return mav;
	}
	
	@RequestMapping("/poolMemberAdd05.do")
	public ModelAndView viewMemberAddPage5(HttpServletRequest req, HttpSession session)
	{
		String pluscontent=req.getParameter("pluscontent");
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("pluscontent", pluscontent);
				
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMemberAdd05");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMemberAddConfirm.do",method=RequestMethod.GET)
	public ModelAndView ShortAddConfirm(HttpSession session, HttpServletRequest req)
	{
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		String userid=(String)session.getAttribute("sid");
		String aim=data.get("aim");
		String startspot=data.get("startspot");
		String endspot=data.get("endspot");
		String route=data.get("route");
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String type=data.get("type");
		
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, route, starttime, mannum, gender, pay, smoking, pluscontent, type);
		
		int count=poolDao.poolMemberShortAdd(dto);
		
		String msg=count>0?"성공":"실패";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
		
	}
	
	@RequestMapping(value="/poolMemberAddConfirm.do",method=RequestMethod.POST)
	public ModelAndView TermAddConfirm(HttpSession session, HttpServletRequest req)
	{
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		String userid=(String)session.getAttribute("sid");
		String aim=data.get("aim");
		String startspot=data.get("startspot");
		String endspot=data.get("endspot");
		String route=data.get("route");
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String type=data.get("type");
		String startdate=data.get("startdate");
		String enddate=data.get("enddate");
		String days=data.get("days");
	
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, route, starttime, mannum, gender, pay, smoking, pluscontent, type, startdate, enddate, days);
		
		int count=poolDao.poolMemberLongAdd(dto);
		
		String msg=count>0?"성공":"실패";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
		
	}
	
	@RequestMapping("/poolList.do")
	public ModelAndView viewPoolList(@RequestParam(value="cp",defaultValue="1")int cp){
		int totalCnt=poolDao.getTotalCnt();
		int listSize=10;
		int pageSize=5;
		List<PoolDTO> list=poolDao.viewAllList(cp,listSize);
		String pageStr=
			su.Page.SuPage.makePage("poolMain.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("carpool/poolList");
		return mav;
	
	}
	
	@RequestMapping("/poolEachContent.do")
	public ModelAndView viewEachContent(@RequestParam(value="idx")int idx)
	{
		PoolDTO dto=poolDao.viewEachContent(idx);
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("dto",dto);
		
		mav.setViewName("carpool/poolEachContent");
		
		return mav;
	}
	
	@RequestMapping("/poolEditForm.do")
	public ModelAndView viewEditForm(@RequestParam(value="idx")int idx, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		PoolDTO dto=poolDao.viewEachContent(idx);
		
		ModelAndView mav=new ModelAndView();
				
		if(id.equals(dto.getUserid()))
		{
			mav.addObject("dto",dto);
			
			mav.setViewName("carpool/poolEdit");
		}
		else
		{
			mav.setViewName("redirect:carpool/poolMain");
		}
		
		return mav;
	}

	@RequestMapping(value="/poolEdit.do",method=RequestMethod.GET)
	public ModelAndView poolShortEdit(HttpServletRequest req, HttpSession session)
	{
		int idx=Integer.parseInt(req.getParameter("idx"));
		String userid=(String)session.getAttribute("sid");
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String route=req.getParameter("route");
		int mannum=Integer.parseInt(req.getParameter("mannum"));
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		
		int pay=Integer.parseInt(req.getParameter("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String type=req.getParameter("type");
		
		String sh=req.getParameter("sh");
		
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
		}
				
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("smi");

		PoolDTO dto=new PoolDTO(idx, userid, aim, startspot, endspot, route, starttime, mannum, gender, pay, smoking, pluscontent, type);

			
		int count=poolDao.poolMemberShortEdit(dto);
		
		String msg=count>0?"성공":"실패";
		
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg", msg);
		
		mav.setViewName("carpool/poolMsg");
	
		
		return mav;
	}
	
	@RequestMapping(value="/poolEdit.do",method=RequestMethod.POST)
	public ModelAndView poolLongEdit(HttpSession session, HttpServletRequest req)
	{
		int idx=Integer.parseInt(req.getParameter("idx"));
		String userid=(String)session.getAttribute("sid");
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String route=req.getParameter("route");
		int mannum=Integer.parseInt(req.getParameter("mannum"));
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		int pay=Integer.parseInt(req.getParameter("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String type=req.getParameter("type");
				
		String lh=req.getParameter("lh");
		int h=Integer.parseInt(lh);
		
		if(req.getParameter("lapm").equals("오후"))
		{
			h+=12;
		}
		
		String starttime=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd")+" "+h+":"+req.getParameter("lmi");
		String startdate=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd");
		String enddate=req.getParameter("ley")+'-'+req.getParameter("lem")+'-'+req.getParameter("led");
		String days=req.getParameter("mon")+req.getParameter("tue")+req.getParameter("wed")+req.getParameter("thu")+req.getParameter("fri")+req.getParameter("sat")+req.getParameter("sun");
		
		days=days.replace("null", "");

				
		System.out.println(idx+"/"+enddate+"/"+smoking+"/"+type+"/"+days);
		
		PoolDTO dto=new PoolDTO(idx, userid, aim, startspot, endspot, route, starttime, mannum, gender, pay, smoking, pluscontent, type, startdate, enddate, days);
		
		
		
		
		int count=poolDao.poolMemberLongEdit(dto);
		
		String msg=count>0?"성공":"실패";

		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg", msg);
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
	}
	
	@RequestMapping("/poolDel.do")
	public ModelAndView runDel(HttpSession session, HttpServletRequest req)
	{
		String id=(String)session.getAttribute("sid");
		int idx=Integer.parseInt(req.getParameter("idx"));
		
		PoolDTO dto=poolDao.viewEachContent(idx);
		
		ModelAndView mav=new ModelAndView();
		
		if(id.equals(dto.getUserid()))
		{
			int count=poolDao.poolDel(idx);
			
			String msg=count>0?"성공":"실패";
			
			mav.addObject("msg",msg);
			
			mav.setViewName("/carpool/poolMsg");
			
			return mav;
		}
		else
		{
			String msg="자신이 쓴 글만 지울 수 있습니다.";
			
			mav.addObject("msg",msg);
			
			mav.setViewName("/carpool/poolMsg");
			
			return mav;
		}
	}
	
	@RequestMapping("/shortPoolList.do")
	public ModelAndView viewShortPoolList(@RequestParam(value="cp",defaultValue="1")int cp){
			int totalCnt=poolDao.getShortTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolDao.viewShortList(cp,listSize);
			String pageStr=
				su.Page.SuPage.makePage("poolMain.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("carpool/poolList");
			return mav;
		
		
	}
	
	@RequestMapping("/longPoolList.do")
	public ModelAndView viewLongPoolList(@RequestParam(value="cp",defaultValue="1")int cp){
			int totalCnt=poolDao.getLongTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolDao.viewLongList(cp,listSize);
			String pageStr=
				su.Page.SuPage.makePage("poolMain.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("carpool/poolList");
			return mav;
		
		
	}
}
