package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarpoolController 
{
	
	@RequestMapping("/carpoolMain.do")
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
}
