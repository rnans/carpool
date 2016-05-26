package su.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReserveController {

	
	@RequestMapping("/allReserveList.do")
   public String allReserveList(){
		return "admin/allReserveAdmin";
	}
	@RequestMapping("/driverReserveList.do")
	public String driverReserveList(){
		return "admin/driverReserveAdmin";
	}
	@RequestMapping("/memberReserveList.do")
	public String memberReserveList(){
		return "admin/memberReserveAdmin";
	}
	@RequestMapping("/payMentList.do")
	public String payMentList(){
		return "admin/paymentList";
	}
}
