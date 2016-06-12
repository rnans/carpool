package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController 
{
	@RequestMapping("/index.do")
	public String viewIndex()
	{
		return "index";
	}
	
	@RequestMapping("adminMain.do")
	public String viewadmin()
	{
		return "admin/adminMain";
	}
	
}
