package su.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarpoolController 
{
	
	@RequestMapping("/poolMain.do")
	public String viewMainpage()
	{
		return "carpool/poolMain";
	}
	
	@RequestMapping("/poolMasterAdd.do")
	public String viewMasterAddPage()
	{
		return "carpool/poolMasterAdd01";
	}
	
	@RequestMapping("/poolMemberAdd.do")
	public String viewMemberAddPage()
	{
		return "carpool/poolMemberAdd01";
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
	public ModelAndView viewMemberAddPage3(HttpServletRequest req)
	{
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String route=req.getParameter("route");
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("aim",aim);
		mav.addObject("startspot",startspot);
		mav.addObject("endspot",endspot);
		mav.addObject("route",route);
		
		mav.setViewName("carpool/poolMemberAdd03");
		
		return mav;
	}
}
