package su.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import su.adminMember.model.AdminMemberDAO;
import su.adminPool.model.AdminUserPoolDAO;
import su.csCenter.model.CsNoticeDAO;
import su.csCenter.model.CsNoticeDTO;
import su.csCenter.model.CsoneandoneDAO;
import su.pay.model.PayDAO;
import su.paylist.model.PayListDAO;

@Controller
public class AdminMainController {

	@Autowired
	private AdminMemberDAO adMemberDao;

	public AdminMemberDAO getAdMemberDao() {
		return adMemberDao;
	}
	public void setAdMemberDao(AdminMemberDAO adMemberDao) {
		this.adMemberDao = adMemberDao;
	}
	@Autowired
	private CsNoticeDAO csnoticeDao;

	public CsNoticeDAO getCsnoticeDao() {
		return csnoticeDao;
	}
	public void setCsnoticeDao(CsNoticeDAO csnoticeDao) {
		this.csnoticeDao = csnoticeDao;
	}
	@Autowired
	private CsoneandoneDAO csoneandoneDao;
	
	public CsoneandoneDAO getCsoneandoneDao() {
		return csoneandoneDao;
	}
	public void setCsoneandoneDao(CsoneandoneDAO csoneandoneDao) {
		this.csoneandoneDao = csoneandoneDao;
	}
	@Autowired
	private AdminUserPoolDAO adUserPoolDao;
	public AdminUserPoolDAO getAdUserPoolDao() {
		return adUserPoolDao;
	}
	public void setAdUserPoolDao(AdminUserPoolDAO adUserPoolDao) {
		this.adUserPoolDao = adUserPoolDao;
	}
	@Autowired
	private PayDAO payDao;
	public PayDAO getPayDao() {
		return payDao;
	}
	public void setPayDao(PayDAO payDao) {
		this.payDao = payDao;
	}
	@RequestMapping("/adminMain.do")
	public ModelAndView viewadmin()
	{
		ModelAndView mav=new ModelAndView();
		int man = adMemberDao.memberSexMan();
		int woman = adMemberDao.memberSexWoman();
		int seoul = adMemberDao.memberAddrSeoul();
		int gyeonggi=adMemberDao.memberAddrGyeonggi();
		int inchean = adMemberDao.memberAddrInchean();
		int busan = adMemberDao.memberAddrBusan();
		int etc = adMemberDao.memberAddrEtc();
		int idx=csnoticeDao.newNoticeIdx();
		int membercount=adMemberDao.memberCount();
		int poolcount=adUserPoolDao.poolCount();
		int oneandonecount=csoneandoneDao.oneandoneCount();
		int paylistcount=payDao.paylistCount();
		String noticedate=csnoticeDao.newNoticeDate(idx);
		String noticesubject=csnoticeDao.newNoticeSubject(idx);
		int idx1=csoneandoneDao.newOneandoneIdx();
		String oneandonedate=csoneandoneDao.newOneandoneDate(idx1);
		String oneandonesubject=csoneandoneDao.newOneandoneSubject(idx1);
		int idx2=adUserPoolDao.newPoolIdx();
		int idx3=adUserPoolDao.new2PoolIdx();
		int idx4=payDao.payCount();
		String paydate=payDao.payDate(idx4);
		int paypay=payDao.payPay(idx4);
		String pooltype=adUserPoolDao.newPoolType(idx2);
		String poolname=adUserPoolDao.newPoolName(idx2);
		String pooldate=adUserPoolDao.newPoolDate(idx2);
		String pooltype2=adUserPoolDao.newPoolType2(idx3);
		String poolname2=adUserPoolDao.newPoolName2(idx3);
		String pooldate2=adUserPoolDao.newPoolDate2(idx3);
		mav.addObject("man", man);
		mav.addObject("woman", woman);
		mav.addObject("seoul", seoul);
		mav.addObject("gyeonggi", gyeonggi);
		mav.addObject("inchean", inchean);
		mav.addObject("busan", busan);
		mav.addObject("etc", etc);
		mav.addObject("noticedate",noticedate);
		mav.addObject("noticesubject",noticesubject);
		mav.addObject("oneandonedate",oneandonedate);
		mav.addObject("oneandonesubject",oneandonesubject);
		mav.addObject("pooltype", pooltype);
		mav.addObject("poolname", poolname);
		mav.addObject("pooldate",pooldate);
		mav.addObject("pooltype2", pooltype2);
		mav.addObject("poolname2", poolname2);
		mav.addObject("pooldate2",pooldate2);
		mav.addObject("paypay",paypay);
		mav.addObject("paydate", paydate);
		mav.addObject("idx4",idx4);
		mav.addObject("membercount", membercount);
		mav.addObject("poolcount",poolcount);
		mav.addObject("oneandonecount", oneandonecount);
		mav.addObject("paylistcount",paylistcount);
		mav.addObject("idx1", idx1);
		mav.setViewName("admin/adminMain");
		return mav;
	}
	
}
