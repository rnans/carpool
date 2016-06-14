package su.pool.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.datasource.pooled.PoolState;
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
import su.pool.model.PoolDateDTO;
import su.pool.model.PoolInfoDTO;
import su.pool.model.PoolLocDTO;
import su.pool.model.PoolMasterStatusDTO;
import su.pool.model.PoolMemberStatusDTO;
import su.pool.model.PoolRateAvgDTO;
import su.pool.model.PoolRateDAO;
import su.pool.model.PoolRateDTO;
import su.pool.model.PoolStatusDAO;
import su.upload.model.UploadDTO;
import su.carinfo.model.carInfoDAO;
import su.carinfo.model.carInfoDTO;
import su.member.model.*;
import su.mypage.model.MypageDAO;
import su.mypage.model.MypageDTO;

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

	@Autowired
	private PoolStatusDAO poolStatusDao;
	
	public PoolStatusDAO getPoolStatusDao() {
		return poolStatusDao;
	}

	public void setPoolStatusDao(PoolStatusDAO poolStatusDao) {
		this.poolStatusDao = poolStatusDao;
	}
	
	@Autowired
	private carInfoDAO carInfoDao;
	
	
	
	public carInfoDAO getCarInfoDao() {
		return carInfoDao;
	}

	public void setCarInfoDao(carInfoDAO carInfoDao) {
		this.carInfoDao = carInfoDao;
	}

	@Autowired
	private MypageDAO myPageDao;
	
	public MypageDAO getMyPageDao() {
		return myPageDao;
	}

	public void setMyPageDao(MypageDAO myPageDao) {
		this.myPageDao = myPageDao;
	}

	@Autowired
	private PoolRateDAO poolRateDao;
	
	public PoolRateDAO getPoolRateDao() {
		return poolRateDao;
	}

	public void setPoolRateDao(PoolRateDAO poolRateDao) {
		this.poolRateDao = poolRateDao;
	}

	@RequestMapping("/poolFindForm.do")
	public ModelAndView viewFindPage()
	{
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolFind");
		
		return mav;
	}
	
	@RequestMapping("/poolFind.do")
	public ModelAndView poolFind(String termtype, String pooltype, String smoking, String gender, String startspot, String endspot, String slat, String slng, String elat, String elng)
	{
		ModelAndView mav=new ModelAndView();
			
		HashMap map=new HashMap();
		
		map.put("termtype", termtype);
		map.put("pooltype", pooltype);
		map.put("startspot", startspot);
		map.put("endspot", endspot);
		map.put("gender", gender);
		map.put("smoking", smoking);
		map.put("slat", Math.round(Double.parseDouble(slat)*1000000)/1000000.0);
		map.put("slng", Math.round(Double.parseDouble(slng)*1000000)/1000000.0);
		map.put("elat", Math.round(Double.parseDouble(elat)*1000000)/1000000.0);
		map.put("elng", Math.round(Double.parseDouble(elng)*1000000)/1000000.0);
		
		System.out.println(map.get("slat"));
		System.out.println(map.get("slng"));
		System.out.println(map.get("elat"));
		System.out.println(map.get("elng"));
		
		List lists=poolDao.poolFind(map);
		
		if(lists.isEmpty())
		{
			mav.addObject("msg","검색된 결과가 없습니다.");
			mav.setViewName("/carpool/poolMsg");
		}
		else{
		mav.addObject("list",lists);
		
		mav.setViewName("/carpool/poolList");
		}
		return mav;
	}
	
	@RequestMapping("/poolListByJson.do")
	public ModelAndView viewAllListJson()
	{
		ModelAndView mav=new ModelAndView("yongJson");
		
		mav.addObject("lists", poolDao.viewAllList());
		mav.addObject("imgList",poolDao.proImg1());
		
		return mav;
	}
	
	@RequestMapping("/poolMemberAdd.do")
	public ModelAndView viewMemberAddPage(HttpSession session)
	{
		String userid=(String)session.getAttribute("sid");		
		

		ModelAndView mav=new ModelAndView();
		
		
		
		try
		{
			MemberDTO dto=poolDao.getAllUserInfo(userid);
			List imgList=poolDao.proImg1();
			
			mav.setViewName("carpool/poolMemberAdd01");
			mav.addObject("dto",dto);
			mav.addObject("imgList",imgList);
			return mav;
		
		}
		catch(Exception e)
		{
			String msg="로그인 후에 이용 가능합니다.";
			mav.setViewName("/carpool/poolMsg");
			mav.addObject("url","index.do");
			mav.addObject("msg",msg);
			return mav;
		}
		
	}
	

	@RequestMapping("/poolAdd.do")
	public String viewCarpoolAddPage()
	{
		return "carpool/poolAdd";
	}
	
	@RequestMapping("/poolMasterAdd.do")
	public ModelAndView viewMasterAddPage(HttpSession session) {
		String userid = (String) session.getAttribute("sid");


		ModelAndView mav = new ModelAndView();

		try
		{
			MemberDTO dto=poolDao.getAllUserInfo(userid);
			List imgList=poolDao.proImg1();
			
			mav.setViewName("carpool/poolMasterAdd01");
			mav.addObject("dto",dto);
			mav.addObject("imgList",imgList);
			return mav;
		
		}
		catch(Exception e)
		{
			String msg="로그인 후에 이용 가능합니다.";
			mav.setViewName("/carpool/poolMsg");
			mav.addObject("url","index.do");
			mav.addObject("msg",msg);
			return mav;
		}
		
	}
	
	@RequestMapping("/poolMasterAdd02.do")
	public ModelAndView viewMasterAddPage2(HttpSession session,HttpServletRequest req,MypageDTO dto){
		
		String userid = (String) session.getAttribute("sid");

		int count=myPageDao.myProfileUpdate(dto);
		
		List lists=poolDao.getCarInfo(userid);
		
		int i=0;
		
		carInfoDTO dto3=new carInfoDTO();
		
		dto3=null;
		
		for(i=0;i<lists.size();i++)
		{
			carInfoDTO dto2=(carInfoDTO)lists.get(i);
			
			if(dto2.getCarid().equals("1"))
			{
				dto3=dto2;
			}
		}
		
		
		ModelAndView mav=new ModelAndView();
		
		if(lists.isEmpty())
		{
			mav.addObject("msg","등록된 차량이 없습니다. 차량을 등록해주세요.");
			mav.addObject("url","carAdd.do");
			mav.setViewName("carpool/poolMsg");
		}
		else if(dto3==null||dto3.equals(""))
		{
			mav.addObject("msg","대표 차량이 없습니다. 대표 차량을 설정해주세요.");
			mav.addObject("url","carList.do");
			mav.setViewName("carpool/poolMsg");
		}
		else{
		
		mav.addObject("dto",dto3);
		mav.setViewName("carpool/poolMasterAdd02");
		}
		
		return mav;
		
	}
	@RequestMapping("/poolMasterAdd03.do")
	public ModelAndView viewMasterAddPage3(HttpSession session,HttpServletRequest req){
		
		String caridx=req.getParameter("idx");
		
		HashMap<String, String> data=new HashMap<String, String>();
		
		data.put("caridx", caridx);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMasterAdd03");
		
		return mav;
		
	}
	
	@RequestMapping("/poolMemberAdd02.do")
	public ModelAndView viewMemberAddPage2(HttpSession session, MypageDTO dto)
	{
		String id=(String)session.getAttribute("sid");
		
		int count=myPageDao.myProfileUpdate(dto);
		
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMemberAdd02");

		
		return mav;
	}
	
	
	
	@RequestMapping("/poolMemberAdd03.do")
	public ModelAndView viewMemberAddPage3(HttpServletRequest req, HttpSession session)
	{
		String pooltype=req.getParameter("pooltype");
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String startcoordi=req.getParameter("startcoordi");
		String endcoordi=req.getParameter("endcoordi");
		
		HashMap<String, String> data=new HashMap<String, String>();
		
		data.put("aim", aim);
		data.put("startspot", startspot);
		data.put("endspot", endspot);
		data.put("pooltype", pooltype);
		data.put("startcoordi", startcoordi);
		data.put("endcoordi",endcoordi);
		data.put("userid", (String)session.getAttribute("sid"));

		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMemberAdd03");
		
		return mav;
	}
	
	@RequestMapping("/poolMasterAdd04.do")
	public ModelAndView viewMasterAddPage4(HttpServletRequest req, HttpSession session)
	{
		String pooltype=req.getParameter("pooltype");
		String aim=req.getParameter("aim");
		String startspot=req.getParameter("startspot");
		String endspot=req.getParameter("endspot");
		String startcoordi=req.getParameter("startcoordi");
		String endcoordi=req.getParameter("endcoordi");

		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("aim", aim);
		data.put("startspot", startspot);
		data.put("endspot", endspot);
		data.put("pooltype", pooltype);
		data.put("userid", (String)session.getAttribute("sid"));		
		data.put("startcoordi", startcoordi);
		data.put("endcoordi",endcoordi);

		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("carpool/poolMasterAdd04");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMemberAdd04.do", method=RequestMethod.GET)
	public ModelAndView viewMemberAddPage4(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String termtype=req.getParameter("termtype");
		String pay=req.getParameter("pay");
		
		String sh=req.getParameter("sh");
		
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
			
			if(h==24)
			{
				h=0;
			}
		}
		
				
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("smi");
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);
		data.put("termtype", termtype);
		data.put("pay", pay);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMemberAdd04");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMasterAdd05.do", method=RequestMethod.GET)
	public ModelAndView viewMasterAddPage5(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String termtype=req.getParameter("termtype");
		String pay=req.getParameter("pay");
		
		String sh=req.getParameter("sh");
		
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
			if(h==24)
			{
				h=0;
			}
		}
		
		
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("smi");
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);
		data.put("termtype", termtype);
		data.put("pay", pay);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMasterAdd05");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMemberAdd04.do", method=RequestMethod.POST)
	public ModelAndView viewMemberAddPage4post(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String termtype=req.getParameter("termtype");
		
		String pay=req.getParameter("pay");
		
		String lh=req.getParameter("lh");
		int h=Integer.parseInt(lh);
		
		if(req.getParameter("lapm").equals("오후"))
		{
			h+=12;
			if(h==24)
			{
				h=0;
			}
		}
		
		
		String starttime=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd")+" "+h+":"+req.getParameter("lmi");
		String startdate=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd");
		String enddate=req.getParameter("ley")+'-'+req.getParameter("lem")+'-'+req.getParameter("led");
		String days=req.getParameter("mon")+req.getParameter("tue")+req.getParameter("wed")+req.getParameter("thu")+req.getParameter("fri")+req.getParameter("sat")+req.getParameter("sun");
		
		days=days.replace("null", "");
	
		System.out.println(days);
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("mannum", mannum);
		data.put("gender",gender);
		data.put("smoking",smoking);
		data.put("starttime", starttime);
		data.put("pay",pay);
		data.put("termtype", termtype);
		data.put("startdate",startdate);
		data.put("enddate",enddate);
		data.put("days", days);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMemberAdd04");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMasterAdd05.do", method=RequestMethod.POST)
	public ModelAndView viewMasterAddPage5post(HttpServletRequest req, HttpSession session)
	{
		String mannum=req.getParameter("mannum");
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		String termtype=req.getParameter("termtype");
		
		String pay=req.getParameter("pay");
		
		String lh=req.getParameter("lh");
		int h=Integer.parseInt(lh);
		
		if(req.getParameter("lapm").equals("오후"))
		{
			h+=12;
			if(h==24)
			{
				h=0;
			}
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
		data.put("termtype", termtype);
		data.put("startdate",startdate);
		data.put("enddate",enddate);
		data.put("days", days);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMasterAdd05");
		
		return mav;
	}
	
	@RequestMapping("/poolMasterAdd06.do")
	public ModelAndView viewMasterAddPage6(HttpServletRequest req, HttpSession session)
	{
		String pluscontent=req.getParameter("pluscontent");
		String sLat=req.getParameter("sLat");
		String sLng=req.getParameter("sLng");
		String eLat=req.getParameter("eLat");
		String eLng=req.getParameter("eLng");
		
		
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		data.put("pluscontent", pluscontent);
		data.put("slat",sLat);
		data.put("slng", sLng);
		data.put("elat",eLat);
		data.put("elng",eLng);
		
		session.setAttribute("data", data);
		
		ModelAndView mav=new ModelAndView();
				
		mav.setViewName("carpool/poolMasterAdd06");
		
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
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String termtype=data.get("termtype");
		String pooltype=data.get("pooltype");
		String startcoordi=data.get("startcoordi");
		String endcoordi=data.get("endcoordi");
		double sLat=Double.parseDouble(req.getParameter("sLat"));
		double sLng=Double.parseDouble(req.getParameter("sLng"));
		double eLat=Double.parseDouble(req.getParameter("eLat"));
		double eLng=Double.parseDouble(req.getParameter("eLng"));
		
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, termtype, sLat, sLng, eLat, eLng, " ", " ");
	
		
		int count=poolDao.poolMemberShortAdd(dto);
		
		
		
		
		String msg=count>0?"카풀 게시글이 등록되었습니다.":"다시 시도해 주세요.";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		mav.addObject("url","poolList.do");
		
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
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String termtype=data.get("termtype");
		String pooltype=data.get("pooltype");
		String startdate=data.get("startdate");
		String enddate=data.get("enddate");
		String days=data.get("days");
		String startcoordi=data.get("startcoordi");
		String endcoordi=data.get("endcoordi");
		double sLat=Double.parseDouble(req.getParameter("sLat"));
		double sLng=Double.parseDouble(req.getParameter("sLng"));
		double eLat=Double.parseDouble(req.getParameter("eLat"));
		double eLng=Double.parseDouble(req.getParameter("eLng"));
		
		
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, startdate, enddate, days, termtype, sLat, sLng, eLat, eLng, " ", " ");
		
		int count=poolDao.poolMemberLongAdd(dto);
		
		System.out.println("POST 수행됨");
		
		String msg=count>0?"카풀 게시글이 등록되었습니다.":"다시 시도해 주세요.";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		mav.addObject("url","poolList.do");
		
		mav.setViewName("carpool/poolMsg");
		
		return mav;
		
	}
	
	@RequestMapping("/checkPoolName.do")
	public ModelAndView checkPoolName(HttpServletRequest req)
	{
		String poolName=req.getParameter("poolname");
		
		List lists=poolDao.checkPoolName(poolName);

		ModelAndView mav=new ModelAndView();
		
		if(lists.isEmpty())
		{
			mav.addObject("msg","사용 가능한 카풀 이름입니다.");
		}
		else
		{
			mav.addObject("msg","사용 불가능한 카풀 이름입니다.");
		}
		
		mav.setViewName("carpool/msg");
		
		return mav;
	}
	
	@RequestMapping(value="/poolMasterAddConfirm.do",method=RequestMethod.GET)
	public ModelAndView MasterShortAddConfirm(HttpSession session, HttpServletRequest req)
	{
		System.out.println("GET");
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		String userid=(String)session.getAttribute("sid");
		String aim=data.get("aim");
		String startspot=data.get("startspot");
		String endspot=data.get("endspot");
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=data.get("pluscontent");
		String termtype=data.get("termtype");
		String pooltype=data.get("pooltype");
		String poolname=req.getParameter("poolname");
		int caridx=Integer.parseInt(data.get("caridx"));
		String startcoordi=data.get("startcoordi");
		String endcoordi=data.get("endcoordi");
		double sLat=Double.parseDouble(data.get("slat"));
		double sLng=Double.parseDouble(data.get("slng"));
		double eLat=Double.parseDouble(data.get("elat"));
		double eLng=Double.parseDouble(data.get("elng"));
		
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, termtype, caridx, poolname, sLat, sLng, eLat, eLng, " ", " ");
		
		int count=poolDao.poolMasterShortAdd(dto);

		int addidx=poolDao.getMasterIdx(poolname);
		
		PoolMasterStatusDTO mDto=new PoolMasterStatusDTO(userid, addidx, mannum);
		
		int count2=poolStatusDao.makeMasterStatus(mDto);

		MemberDTO memDto=poolDao.getAllUserInfo(userid);
		
		String s_caridx=""+caridx;
		
		PoolInfoDTO pInfoDto=new PoolInfoDTO(userid, poolname, termtype, s_caridx, memDto.getName() ,memDto.getPhonenum(), memDto.getEmail(), memDto.getSex(), memDto.getBirth(), 0);
		
		int count3=poolStatusDao.makeCarpoolInfo(pInfoDto);

		String msg=count+count2+count3>=3?"카풀 게시글이 등록되었습니다.":"다시 시도해 주세요.";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		mav.addObject("url","poolList.do");
		mav.setViewName("carpool/poolMsg");
		
		return mav;
		
	}
	
	@RequestMapping(value="/poolMasterAddConfirm.do",method=RequestMethod.POST)
	public ModelAndView MasterTermAddConfirm(HttpSession session, HttpServletRequest req)
	{
		System.out.println("POST");
		HashMap<String, String> data=(HashMap<String, String>)session.getAttribute("data");
		
		String userid=(String)session.getAttribute("sid");
		String aim=data.get("aim");
		String startspot=data.get("startspot");
		String endspot=data.get("endspot");
		int mannum=Integer.parseInt(data.get("mannum"));
		String gender=data.get("gender");
		String smoking=data.get("smoking");
		String starttime=data.get("starttime");
		int pay=Integer.parseInt(data.get("pay"));
		String pluscontent=data.get("pluscontent");
		String termtype=data.get("termtype");
		String pooltype=data.get("pooltype");
		String startdate=data.get("startdate");
		String enddate=data.get("enddate");
		String days=data.get("days");
		String poolname=req.getParameter("poolname");
		int caridx=Integer.parseInt(data.get("caridx"));
		String startcoordi=data.get("startcoordi");
		String endcoordi=data.get("endcoordi");
		double sLat=Double.parseDouble(data.get("slat"));
		double sLng=Double.parseDouble(data.get("slng"));
		double eLat=Double.parseDouble(data.get("elat"));
		double eLng=Double.parseDouble(data.get("elng"));
		
		PoolDTO dto=new PoolDTO(userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, startdate, enddate, days, termtype, caridx, poolname, sLat, sLng, eLat, eLng, " ", " ");
		
		int count=poolDao.poolMasterLongAdd(dto);
		System.out.println(poolname);
		int addidx=poolDao.getMasterIdx(poolname);
		System.out.println(addidx);
		
		PoolMasterStatusDTO mDto=new PoolMasterStatusDTO(userid, addidx, mannum);
		
		int count2=poolStatusDao.makeMasterStatus(mDto);
		
		MemberDTO memDto=poolDao.getAllUserInfo(userid);
		
		String s_caridx=""+caridx;
		
		PoolInfoDTO pInfoDto=new PoolInfoDTO(userid, poolname, termtype, s_caridx, memDto.getName() ,memDto.getPhonenum(), memDto.getEmail(), memDto.getSex(), memDto.getBirth(), 1);
		
		int count3=poolStatusDao.makeCarpoolInfo(pInfoDto);
		
		
		String msg=count+count2+count3>=3?"카풀 게시글이 등록되었습니다.":"다시 시도해 주세요.";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("msg",msg);
		mav.addObject("url","poolList.do");
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
			su.Page.SuBPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
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
		
		List res=poolRateDao.getListByAimid(dto.getUserid());

		MemberDTO mDTO=poolDao.getAllUserInfo(dto.getUserid());
		
		int pCount=poolStatusDao.getOwnPoolCount(dto.getUserid());
		
		List<UploadDTO> list = poolDao.proImg1();
		
		
		
		PoolRateAvgDTO avgDTO=new PoolRateAvgDTO();
		
		ModelAndView mav=new ModelAndView();
		
		if(res.isEmpty())
		{
			mav.addObject("msg","등록된 평가가 없습니다.");
		}
		else
		{
			mav.addObject("rDtos",res);
			avgDTO=poolRateDao.getAvrRateByAimid(dto.getUserid());
		}
		
		mav.addObject("lists", list);
		mav.addObject("dto",dto);
		mav.addObject("mDTO",mDTO);
		mav.addObject("pCount",pCount);
		mav.addObject("avg",avgDTO);

		
		mav.setViewName("carpool/poolEachContent");
		
		return mav;
	}
	
	@RequestMapping("/poolEditForm.do")
	public ModelAndView viewEditForm(@RequestParam(value="termtype")String termtype, @RequestParam(value="idx")int idx, HttpSession session)
	{
		String id=(String)session.getAttribute("sid");
		
		PoolDTO dto=poolDao.viewEachContent(idx);
		
		ModelAndView mav=new ModelAndView();
				
		if(id.equals(dto.getUserid())&&termtype.equals("단기"))
		{
			mav.addObject("dto",dto);
			
			mav.setViewName("carpool/poolEditShort");
		}
		else if(id.equals(dto.getUserid())&&termtype.equals("정기"))
		{
			mav.addObject("dto",dto);
			
			mav.setViewName("carpool/poolEditLong");
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
		
		int mannum=Integer.parseInt(req.getParameter("mannum"));
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		
		int pay=Integer.parseInt(req.getParameter("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String termtype=req.getParameter("termtype");
		String startcoordi=req.getParameter("startcoordi");
		String endcoordi=req.getParameter("endcoordi");
		double sLat=Double.parseDouble(req.getParameter("sLat"));
		double sLng=Double.parseDouble(req.getParameter("sLng"));
		double eLat=Double.parseDouble(req.getParameter("eLat"));
		double eLng=Double.parseDouble(req.getParameter("eLng"));
		String pooltype=req.getParameter("pooltype");
		
		String sh=req.getParameter("sh");
		
		int h=Integer.parseInt(sh);
		
		if(req.getParameter("sapm").equals("오후"))
		{
			h+=12;
			if(h==24)
			{
				h=0;
			}
		}
				
		String starttime=req.getParameter("sy")+'-'+req.getParameter("sm")+'-'+req.getParameter("sd")+" "+h+":"+req.getParameter("smi");
		
		PoolDTO dto=new PoolDTO(idx, userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, termtype, sLat, sLng, eLat, eLng, " ", " ");
			
		int count=poolDao.poolShortEdit(dto);
		
		int count2=0;
		
		List lists=poolDao.getPoolInfo(idx);
		
		
		if(pooltype.equals("탈래요"))
		{
			List lists2=poolStatusDao.getMemReqByAimidx(idx);
			
			if(lists2.get(0).equals("")||lists2.get(0)==null)
			{
				count2=1;

			}
			else{
				count2=poolStatusDao.editMemMans(idx,mannum);
			}
		}
		else if(pooltype.equals("타세요"))
		{
			count2=poolStatusDao.editMasMans(idx,mannum);
		}
		
		
		
		ModelAndView mav=new ModelAndView();
		
		
		mav.setViewName("redirect:poolEachContent.do?idx="+idx);
	
		
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
		int mannum=Integer.parseInt(req.getParameter("mannum"));
		String gender=req.getParameter("gender");
		String smoking=req.getParameter("smoking");
		int pay=Integer.parseInt(req.getParameter("pay"));
		String pluscontent=req.getParameter("pluscontent");
		String termtype=req.getParameter("termtype");
		String startcoordi=req.getParameter("startcoordi");
		String endcoordi=req.getParameter("endcoordi");
		double sLat=Double.parseDouble(req.getParameter("sLat"));
		double sLng=Double.parseDouble(req.getParameter("sLng"));
		double eLat=Double.parseDouble(req.getParameter("eLat"));
		double eLng=Double.parseDouble(req.getParameter("eLng"));
		String pooltype=req.getParameter("pooltype");
		
		
		String lh=req.getParameter("lh");
		int h=Integer.parseInt(lh);
		
		if(req.getParameter("lapm").equals("오후"))
		{
			h+=12;
			if(h==24)
			{
				h=0;
			}
		}
		
		String starttime=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd")+" "+h+":"+req.getParameter("lmi");
		String startdate=req.getParameter("lsy")+'-'+req.getParameter("lsm")+'-'+req.getParameter("lsd");
		String enddate=req.getParameter("ley")+'-'+req.getParameter("lem")+'-'+req.getParameter("led");
		String days=req.getParameter("mon")+req.getParameter("tue")+req.getParameter("wed")+req.getParameter("thu")+req.getParameter("fri")+req.getParameter("sat")+req.getParameter("sun");
		
		days=days.replace("null", "");

				
		System.out.println(idx+"/"+enddate+"/"+smoking+"/"+termtype+"/"+days);
		
		PoolDTO dto =new PoolDTO(idx, userid, aim, startspot, endspot, startcoordi, endcoordi, starttime, mannum, gender, pay, smoking, pluscontent, pooltype, startdate, enddate, days, termtype, sLat, sLng, eLat, eLng, " ", " ");
		int count=poolDao.poolLongEdit(dto);
		

		int count2=0;
		
		List lists=poolDao.getPoolInfo(idx);
		
		
		if(pooltype.equals("탈래요"))
		{
			List lists2=poolStatusDao.getMemReqByAimidx(idx);
			
			if(lists2.get(0).equals("")||lists2.get(0)==null)
			{
				count2=1;

			}
			else{
				count2=poolStatusDao.editMemMans(idx,mannum);
			}
		}
		else if(pooltype.equals("타세요"))
		{
			count2=poolStatusDao.editMasMans(idx,mannum);
		}

		
		ModelAndView mav=new ModelAndView();
		

		mav.setViewName("redirect:poolEachContent.do?idx="+idx);
		
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
			
			String msg=count>0?"삭제되었습니다.":"다시 시도해 주세요.";
			
			mav.addObject("msg",msg);
			mav.addObject("url","poolList.do");
			mav.setViewName("/carpool/poolMsg");
			
			return mav;
		}
		else
		{
			String msg="자신이 쓴 글만 지울 수 있습니다.";
			
			mav.addObject("msg",msg);
			mav.addObject("url","poolList.do");
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
				su.Page.SuBPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
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
				su.Page.SuBPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("carpool/poolList");
			return mav;
		
		
	}
	
	@RequestMapping("/poolMemberList.do")
	public ModelAndView viewPoolMemberList(@RequestParam(value="cp",defaultValue="1")int cp){
			int totalCnt=poolDao.getMemberTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolDao.viewMemberList(cp,listSize);
			String pageStr=
				su.Page.SuBPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("carpool/poolList");
			return mav;
		
		
	}
	
	@RequestMapping("/poolMasterList.do")
	public ModelAndView viewPoolMasterList(@RequestParam(value="cp",defaultValue="1")int cp){
			int totalCnt=poolDao.getMasterTotalCnt();
			int listSize=10;
			int pageSize=5;
			List<PoolDTO> list=poolDao.viewMasterList(cp,listSize);
			String pageStr=
				su.Page.SuBPage.makePage("poolList.do", totalCnt, listSize, pageSize, cp);
			ModelAndView mav=new ModelAndView();
			mav.addObject("list", list);
			mav.addObject("pageStr",pageStr);
			mav.setViewName("carpool/poolList");
			return mav;
		
		
	}
}
