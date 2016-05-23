package su.pool.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
		
		MemberDTO dto=poolDao.getAllUserInfo(userid);
				
		ModelAndView mav=new ModelAndView();
		
		
		
		if(dto==null)
		{
			String msg="로그인 후에 이용 가능합니다.";
			mav.setViewName("carpool/poolMsg");
			mav.addObject(msg,"msg");
		}
		else
		{
			mav.setViewName("carpool/poolMemberAdd01");
			mav.addObject("dto",dto);
		}
		return mav;
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
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMemberAdd03");
		
		return mav;
	}
	
	@RequestMapping("/poolMemberAdd04.do")
	public ModelAndView viewMemberAddPage4(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		
		String sh=req.getParameter("sh");
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
		}
		
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("sm");
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);

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
	
	@RequestMapping("/poolMemberAddConfirm.do")
	public ModelAndView AddConfirm(HttpSession session)
	{
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		String aim=data.get("aim");
		String startspot=data.get("startspot");
		String endspot=data.get("endspot");
		String route=data.get("route");
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		String pluscontent=data.get("pluscontent");
		
		PoolDTO dto=new PoolDTO(aim, startspot, endspot, route, starttime, mannum, gender, smoking, pluscontent);
		
		int count=poolDao.poolMemberAdd(dto);
		
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
	public ModelAndView editPool(@RequestParam(value="idx")int idx)
	{
		PoolDTO dto=poolDao.viewEachContent(idx);
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("dto",dto);
		
		mav.setViewName("carpool/poolEdit");
		
		return mav;
	}
}
