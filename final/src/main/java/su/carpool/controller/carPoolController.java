package su.carpool.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import su.pool.model.PoolDAO;
import su.pool.model.PoolDTO;
import su.carpool.model.CarPoolDAO;
import su.carpool.model.CarPoolDTO;
import su.member.model.*;

@Controller
public class carPoolController {
	@Autowired
	private CarPoolDAO carPoolDao;

	public CarPoolDAO getCarPoolDao() {
		return carPoolDao;
	}

	public void setCarPoolDao(CarPoolDAO carPoolDao) {
		this.carPoolDao = carPoolDao;
	}

	@RequestMapping("/poolMasterAdd.do")
	public ModelAndView viewMasterAddPage(HttpSession session) {
		String userid = (String) session.getAttribute("sid");

		MemberDTO dto = carPoolDao.getUserInfo(userid);

		ModelAndView mav = new ModelAndView();

		if (dto == null) {
			String msg = "로그인 후에 이용 가능합니다.";
			mav.setViewName("carpool/poolMsg");
			mav.addObject("msg", msg);
		} else {
			mav.setViewName("carpool/poolMasterAdd01");
			mav.addObject("dto", dto);
		}
		return mav;
	}
	@RequestMapping("/poolMasterAdd02.do")
	public ModelAndView viewMasterAddPage2(HttpSession session){
		
		String userid = (String) session.getAttribute("sid");

		CarPoolDTO dto = carPoolDao.getCarInfo(userid);

		ModelAndView mav = new ModelAndView();

		
			mav.setViewName("carpool/poolMasterAdd02");
			mav.addObject("dto", dto);
		
		return mav;
		
	}
	@RequestMapping("/poolMasterAdd03.do")
	public String viewMasterAddPage3(){
		
		return "carpool/poolMasterAdd03";
		
	}

	@RequestMapping("/poolMasterAdd04.do")
	public ModelAndView viewMemberAddPage3(HttpServletRequest req, HttpSession session) {
		String carpoolname=req.getParameter("carPoolName");
		String aim = req.getParameter("object");
		String startspot = req.getParameter("startAddr");
		String endspot = req.getParameter("endAddr");
		String route = req.getParameter("passAddr");

		HashMap<String, String> data = new HashMap<String, String>();
		
		data.put("carpoolname", carpoolname);
		data.put("aim", aim);
		data.put("startspot", startspot);
		data.put("endspot", endspot);
		data.put("route", route);

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMasterAdd04");

		return mav;
	}

	@RequestMapping("/poolMasterAdd05.do")
	public ModelAndView viewMemberAddPage4(HttpServletRequest req, HttpSession session) {
		String maxnum=req.getParameter("mannum");
		String hopesex=req.getParameter("hopesex");
		String smoking=req.getParameter("smoking");
		String pay=req.getParameter("pay");
		String carpooltype=req.getParameter("type");
		
		String carpoolname=req.getParameter("carPoolName");
		String object = req.getParameter("object");
		String startAddr = req.getParameter("startAddr");
		String endAddr = req.getParameter("endAddr");
		String passAddr = req.getParameter("passAddr");
		
		String validity=null;
		String starttime=null;
		
		if(carpooltype.equals("단기")){
			
			String sh = req.getParameter("sh");
			int h = Integer.parseInt(sh);
			 starttime =  h + ":" + req.getParameter("sm");
			if (req.getParameter("sapm").equals("오후")) {
				h += 12;
			}
		validity= req.getParameter("sy") + '-' + req.getParameter("sm") + '-' + req.getParameter("sd");
		
		}else{
			
			String lh = req.getParameter("lh");
			int h = Integer.parseInt(lh);
			 starttime =  h + ":" + req.getParameter("lm");
			if (req.getParameter("lapm").equals("오후")) {
				h += 12;
			}
			validity= req.getParameter("lsy") + '-' + req.getParameter("lsm") + '-' + req.getParameter("lsd")+"~"+req.getParameter("lsy2") + '-' + req.getParameter("lsm2") + '-' + req.getParameter("lsd2");
			
		}
		HashMap<String, String> data = (HashMap<String, String>) session.getAttribute("data");

		data.put("maxnum", maxnum);
		data.put("hopesex", hopesex);
		data.put("smoking", smoking);
		data.put("starttime", starttime);
		data.put("validity", validity);
		data.put("pay", pay);
		
		data.put("carpoolname", carpoolname);
		data.put("object", object);
		data.put("startAddr", startAddr);
		data.put("endAddr", endAddr);
		data.put("passAddr", passAddr);
		

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMasterAdd05");

		return mav;
	}
	
	/*@RequestMapping("/poolMasterAdd06.do")
	public ModelAndView viewMemberAddPage5(String userid) {
		

		return mav;
	}*/

	/*@RequestMapping("/poolMemberAddConfirm.do")
	public ModelAndView AddConfirm(HttpSession session) {
		HashMap<String, String> data = (HashMap<String, String>) session.getAttribute("data");

		String aim = data.get("aim");
		String startspot = data.get("startspot");
		String endspot = data.get("endspot");
		String route = data.get("route");
		int mannum = Integer.parseInt(data.get("mannum"));
		String gender = data.get("gender");
		String smoking = data.get("smoking");
		String starttime = data.get("starttime");
		String pluscontent = data.get("pluscontent");

		PoolDTO dto = new PoolDTO(aim, startspot, endspot, route, starttime, mannum, gender, smoking, pluscontent);

		int count = carPoolDao.poolMemberAdd(dto);

		String msg = count > 0 ? "성공" : "실패";

		ModelAndView mav = new ModelAndView();

		mav.addObject("msg", msg);

		mav.setViewName("carpool/poolMsg");

		return mav;

	}*/
}
