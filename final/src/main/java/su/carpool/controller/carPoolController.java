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
			mav.addObject(msg, "msg");
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

		if (dto == null) {
			String msg = "로그인 후에 이용 가능합니다.";
			mav.setViewName("carpool/poolMsg");
			mav.addObject(msg, "msg");
		} else {
			mav.setViewName("carpool/poolMasterAdd02");
			mav.addObject("dto", dto);
		}
		return mav;
		
	}
	@RequestMapping("/poolMasterAdd03.do")
	public String viewMasterAddPage3(){
		
		return "carpool/poolmasterAdd03";
		
	}

	@RequestMapping("/poolMasterAdd04.do")
	public ModelAndView viewMemberAddPage3(HttpServletRequest req, HttpSession session) {
		String aim = req.getParameter("object");
		String startspot = req.getParameter("startAddr");
		String endspot = req.getParameter("endAddr");
		String route = req.getParameter("passAddr");

		HashMap<String, String> data = new HashMap<String, String>();

		data.put("aim", aim);
		data.put("startspot", startspot);
		data.put("endspot", endspot);
		data.put("route", route);

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMasterAdd03");

		return mav;
	}

	/*@RequestMapping("/poolMemberAdd04.do")
	public ModelAndView viewMemberAddPage4(HttpServletRequest req, HttpSession session) {
		String uhung = req.getParameter("uhung");
		String start = req.getParameter("startAddr");
		String pass = req.getParameter("passAddr");
		String end = req.getParameter("endAddr");

		String sh = req.getParameter("sh");
		int h = Integer.parseInt(sh);

		if (req.getParameter("sapm").equals("오후")) {
			h += 12;
		}

		String starttime = req.getParameter("sy") + '-' + req.getParameter("sm") + '-' + req.getParameter("sd") + " "
				+ h + ":" + req.getParameter("sm");

		HashMap<String, String> data = (HashMap<String, String>) session.getAttribute("data");

		data.put("mannum", mannum);
		data.put("gender", gender);
		data.put("smoking", smoking);
		data.put("starttime", starttime);

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMemberAdd04");

		return mav;
	}
	@RequestMapping("/poolMemberAdd04.do")
	public ModelAndView viewMemberAddPage44(HttpServletRequest req, HttpSession session) {
		String uhung = req.getParameter("uhung");
		String start = req.getParameter("startAddr");
		String pass = req.getParameter("passAddr");
		String end = req.getParameter("endAddr");

		String sh = req.getParameter("sh");
		int h = Integer.parseInt(sh);

		if (req.getParameter("sapm").equals("오후")) {
			h += 12;
		}

		String starttime = req.getParameter("sy") + '-' + req.getParameter("sm") + '-' + req.getParameter("sd") + " "
				+ h + ":" + req.getParameter("sm");

		HashMap<String, String> data = (HashMap<String, String>) session.getAttribute("data");

		data.put("mannum", mannum);
		data.put("gender", gender);
		data.put("smoking", smoking);
		data.put("starttime", starttime);

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMemberAdd04");

		return mav;
	}

	@RequestMapping("/poolMemberAdd05.do")
	public ModelAndView viewMemberAddPage5(HttpServletRequest req, HttpSession session) {
		String pluscontent = req.getParameter("pluscontent");

		HashMap<String, String> data = (HashMap<String, String>) session.getAttribute("data");

		data.put("pluscontent", pluscontent);

		session.setAttribute("data", data);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("carpool/poolMemberAdd05");

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
