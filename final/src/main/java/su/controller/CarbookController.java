	package su.controller;
	
	import java.util.List;
	
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpSession;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.ModelAndView;
	import su.carCost.model.*;
	
import su.carinfo.model.carInfoDTO;
	
	@Controller
	public class CarbookController {
	   
	   @Autowired
	   private CarCostDAO CarCostDao;
	
		public CarCostDAO getCarCostDao() {
			return CarCostDao;
		}	
		public void setCarCostDao(CarCostDAO carCostDao) {
			CarCostDao = carCostDao;
		}

	//수정
	@RequestMapping("costUpdate.do")
	   public ModelAndView costUpdate(int idx){
	     List<CarCostDTO> list=CarCostDao.CarCostContent(idx);
	      ModelAndView mav=new ModelAndView();
	      mav.addObject("list", list);
	      mav.setViewName("carbook/costUpdate");
	    return mav;
	   }
	
	@RequestMapping("costUpdate_ok.do")
	public ModelAndView costUpdate_ok(CarCostDTO dto){
		System.out.println(dto.getIdx()+dto.getId()+dto.getBigo()+dto.getCategory()+dto.getCost()+dto.getCostday());
		int result=CarCostDao.CarCostUpdate(dto);
		 String msg=result>0?"수정완료!":"수정실패!";
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("msg", msg);
		 mav.setViewName("carbook/costUpdateMsg");
		 return mav;
	}
	
	   //삭제
	   @RequestMapping("/costDel.do")
		public ModelAndView costDelete(HttpServletRequest req){
			int idx=(Integer.parseInt(req.getParameter("idx")));
			ModelAndView mav=new ModelAndView();
			mav.addObject("idx", idx);
			mav.setViewName("carbook/costDel");
			return mav;
		}
	   @RequestMapping("/costDel_ok.do")
	   public ModelAndView costDelete_ok(int idx){
		   int result=CarCostDao.CarCostDelete(idx);
		   String msg=result>0?"삭제성공!":"삭제실패!";
		   ModelAndView mav=new ModelAndView();
		   mav.addObject("msg", msg);
		   mav.setViewName("carbook/costDelMsg");
		   return mav;
	   }
	   //추가
	   @RequestMapping("/costReg.do")
	   public ModelAndView costReg(HttpServletRequest req){
		   String carnum=req.getParameter("carnum");
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("carnum", carnum);
		  mav.setViewName("carbook/costReg");
		  return mav;
	   }
	   
	   @RequestMapping("/costReg2.do")
	   public ModelAndView costReg2(HttpServletRequest req){
		   String carnum=req.getParameter("carnum");
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("carnum", carnum);
		  mav.setViewName("carbook/costReg2");
		  return mav;
	   }
	   
	   @RequestMapping("/costReg_ok.do")
	   public ModelAndView costReg_ok(CarCostDTO dto){
		   int result=CarCostDao.CarCostAdd(dto);
	      String msg=result>0?"등록성공!":"등록실패!";
	      ModelAndView mav=new ModelAndView();
	      mav.addObject("carnum", dto.getCarnum());
	      mav.addObject("msg", msg);
	      mav.setViewName("carbook/costUpdateMsg");
	      return mav;	    	  
	   }
	   
	   @RequestMapping("/costReg_ok2.do")
	   public ModelAndView costReg_ok2(CarCostDTO dto){
		   int result=CarCostDao.CarCostAdd(dto);
	      String msg=result>0?"등록성공!":"등록실패!";
	      ModelAndView mav=new ModelAndView();
	      mav.addObject("carnum", dto.getCarnum());
	      mav.addObject("msg", msg);
	      mav.setViewName("carbook/costUpdateMsg2");
	      return mav;	    	  
	   }
	   
	
	 //컬럼 합산값 보여주기
	   @RequestMapping("/carBookInfo.do")
	   public ModelAndView CarCostSum(HttpSession session, HttpServletRequest req){
		   String id=(String)session.getAttribute("sid");
		   
		   ModelAndView mav=new ModelAndView();
		   
			if(id==null){
				mav.addObject("msg", "로그인후 이용가능합니다.");
				mav.addObject("gopage", "index.do");
				mav.setViewName("carManage/carMsg");
				
			} else {

		   List<carInfoDTO> carlist=CarCostDao.carnum(id);
		 
		   if(carlist.isEmpty()){
					mav.addObject("msg", "차량등록 후 이용가능합니다. 차량등록 페이지로 이동합니다.");
					mav.addObject("gopage", "carList.do");
					mav.setViewName("carManage/carMsg");
		   } else {
			   
		   String carnum=req.getParameter("carnum");
		   if(carnum==null||carnum.equals("")){
			   carnum=carlist.get(0).getCarnum();
		   }
		   carInfoDTO cardto=CarCostDao.Carimg(carnum);
		   
		   String costsum=CarCostDao.CarCostSum(carnum);
		   String kmsum=CarCostDao.CarKmSum(carnum);
		   String jooyusum=CarCostDao.CarJooyuSum(carnum);
		   String jungbisum=CarCostDao.CarJungbiSum(carnum);
		   String buysum=CarCostDao.CarBuySum(carnum);
		   
		   if(costsum==null){

			   costsum = "0";
		   }
		   if(kmsum==null){
			   kmsum = "0";
		   }
		   if(jooyusum==null){
			   jooyusum = "0";
		   }
		   if(jungbisum==null){
			   jungbisum = "0";
		   }
		   if(buysum==null){
			   buysum = "0";
		   }	
		   	mav.addObject("cardto", cardto);
		  	mav.addObject("costsum", costsum);
		  	mav.addObject("kmsum", kmsum);
			mav.addObject("jooyusum", jooyusum);
			mav.addObject("jungbisum", jungbisum);
			mav.addObject("buysum", buysum);
			mav.addObject("cnum", carlist);
			mav.addObject("carnum", carnum);
			mav.setViewName("carbook/carBookInfo");
		   }
		   
			}
		      return mav;
	   }	   
	   
	   @RequestMapping("/carA.do")
	   public ModelAndView carA(HttpServletRequest req){
		   		   
		   ModelAndView mav=new ModelAndView();
					   
		   String carnum=req.getParameter("carnum");

		   carInfoDTO cardto=CarCostDao.Carimg(carnum);
		   
		   String costsum=CarCostDao.CarCostSum(carnum);
		   String kmsum=CarCostDao.CarKmSum(carnum);
		   String jooyusum=CarCostDao.CarJooyuSum(carnum);
		   String jungbisum=CarCostDao.CarJungbiSum(carnum);
		   String buysum=CarCostDao.CarBuySum(carnum);
		   
		   if(costsum==null){

			   costsum = "0";
		   }
		   if(kmsum==null){
			   kmsum = "0";
		   }
		   if(jooyusum==null){
			   jooyusum = "0";
		   }
		   if(jungbisum==null){
			   jungbisum = "0";
		   }
		   if(buysum==null){
			   buysum = "0";
		   }	
		   	mav.addObject("cardto", cardto);
		  	mav.addObject("costsum", costsum);
		  	mav.addObject("kmsum", kmsum);
			mav.addObject("jooyusum", jooyusum);
			mav.addObject("jungbisum", jungbisum);
			mav.addObject("buysum", buysum);

			mav.addObject("carnum", carnum);
			mav.setViewName("carbook/carA");
		   	
		    return mav;
	   }
	   
	   //리스트보여주기
	   @RequestMapping("/cost.do")
	   public ModelAndView CarCostList(HttpSession session,HttpServletRequest req){
	      
		   String id=(String)session.getAttribute("sid");
		   
		   ModelAndView mav=new ModelAndView();
		   
			if(id==null){
				mav.addObject("msg", "로그인후 이용가능합니다.");
				mav.addObject("gopage", "index.do");
				mav.setViewName("carManage/carMsg");
				
			} else {

		   List<carInfoDTO> carlist=CarCostDao.carnum(id);
		 
		   if(carlist.isEmpty()){
					mav.addObject("msg", "차량등록 후 이용가능합니다. 차량등록 페이지로 이동합니다.");
					mav.addObject("gopage", "carList.do");
					mav.setViewName("carManage/carMsg");
		   } else {
			   
		   String carnum=req.getParameter("carnum");
		   if(carnum==null||carnum.equals("")){
			   carnum=carlist.get(0).getCarnum();
		   }
		   carInfoDTO cardto=CarCostDao.Carimg(carnum);
		      
		   
	      List<CarCostDTO> list=CarCostDao.CarCostList(carnum);
	      mav.addObject("cardto", cardto);
		  mav.addObject("list", list);
		  mav.addObject("cnum", carlist);
		  mav.addObject("carnum", carnum);
		  mav.setViewName("carbook/cost");
	      
		   }}
		   return mav;
	   }
	   
	   @RequestMapping("/costA.do")
	   public ModelAndView costA(HttpSession session, HttpServletRequest req){
		   
		   String id=(String)session.getAttribute("sid");
		   List<carInfoDTO> carlist=CarCostDao.carnum(id);
		   String carnum=req.getParameter("carnum");
		   
		   
		   List<CarCostDTO> list=CarCostDao.CarCostList(carnum);
		   ModelAndView mav=new ModelAndView();
		   mav.addObject("list", list);
		   mav.setViewName("carbook/costA");
		return mav;
	   }
	   
	   
	   @RequestMapping("/graph.do")
	   public ModelAndView graph(HttpSession session, String carnum){
		   String id=(String)session.getAttribute("sid");
		   
		   List<carInfoDTO> carlist=CarCostDao.carnum(id);
		   if(carnum==null||carnum.equals("")){
			   carnum=carlist.get(0).getCarnum();
		   }
		   System.out.println(id);
		   ModelAndView mav=new ModelAndView();
		   
		   String costsum=CarCostDao.CarCostSum(carnum);
		   String kmsum=CarCostDao.CarKmSum(carnum);
		   String jooyusum=CarCostDao.CarJooyuSum(carnum);
		   String jungbisum=CarCostDao.CarJungbiSum(carnum);
		   String buysum=CarCostDao.CarBuySum(carnum);			
		   
		 
		   
			mav.addObject("costsum", costsum);
		  	mav.addObject("kmsum", kmsum);
			mav.addObject("jooyusum", jooyusum);
			mav.addObject("jungbisum", jungbisum);
			mav.addObject("buysum", buysum);
			mav.addObject("cnum", carlist);
			mav.addObject("carnum", carnum);
			
			mav.setViewName("carbook/graph");
			System.out.println(carnum);
	      
		   return mav;
	   }
	   
	 
	   //test
		   @RequestMapping("graph2.do")
		   public ModelAndView graphtest(HttpSession session){
			   String id=(String)session.getAttribute("sid");
			   List<carInfoDTO> carlist=CarCostDao.carnum(id);

			   System.out.println(id);
			   ModelAndView mav=new ModelAndView();
			   String carnum=carlist.get(0).getCarnum();
			   String costsum=CarCostDao.CarCostSum(carnum);
			   String kmsum=CarCostDao.CarKmSum(carnum);
			   String jooyusum=CarCostDao.CarJooyuSum(carnum);
			   String jungbisum=CarCostDao.CarJungbiSum(carnum);
			   String buysum=CarCostDao.CarBuySum(carnum);			
			   
			   mav.setViewName("carbook/graph2");
			   
				mav.addObject("costsum", costsum);
			  	mav.addObject("kmsum", kmsum);
				mav.addObject("jooyusum", jooyusum);
				mav.addObject("jungbisum", jungbisum);
				mav.addObject("buysum", buysum);
				mav.addObject("cnum", carlist);
		      
			   return mav;
		   }
		   
		   @RequestMapping("test.do")
		   public String test(){
			      return "carbook/test";
			   }
		   
		   @RequestMapping("graphTest2.do")
		   public ModelAndView graphtest2(HttpSession session){
			   String id=(String)session.getAttribute("sid");
			   System.out.println(id);
			   List<carInfoDTO> carlist=CarCostDao.carnum(id);
			   
			   ModelAndView mav=new ModelAndView();
			   String carnum=carlist.get(0).getCarnum();
			   
			   String costsum=CarCostDao.CarCostSum(carnum);
			   String kmsum=CarCostDao.CarKmSum(carnum);
			   String jooyusum=CarCostDao.CarJooyuSum(carnum);
			   String jungbisum=CarCostDao.CarJungbiSum(carnum);
			   String buysum=CarCostDao.CarBuySum(carnum);			
			   
			   mav.setViewName("carbook/graphTest2");
			   
				mav.addObject("costsum", costsum);
			  	mav.addObject("kmsum", kmsum);
				mav.addObject("jooyusum", jooyusum);
				mav.addObject("jungbisum", jungbisum);
				mav.addObject("buysum", buysum);
				mav.addObject("cnum", carlist);
		      
			   return mav;
		   } 
		   
		   
		   @RequestMapping("/graphA.do")
		   public ModelAndView graphA(HttpServletRequest req){
			   String carnum=req.getParameter("carnum");
			   ModelAndView mav=new ModelAndView();
			   		
				String costsum = CarCostDao.CarCostSum(carnum);
				String kmsum = CarCostDao.CarKmSum(carnum);
				String jooyusum = CarCostDao.CarJooyuSum(carnum);
				String jungbisum = CarCostDao.CarJungbiSum(carnum);
				String buysum = CarCostDao.CarBuySum(carnum);
				
				if(costsum==null){

					costsum = "0";
				}
				if(kmsum==null){
					kmsum = "0";
				}
				if(jooyusum==null){
					jooyusum = "0";
				}
				if(jungbisum==null){
					jungbisum = "0";
				}
				if(buysum==null){
					buysum = "0";
				}
				
				mav.addObject("costsum2", costsum);
				mav.addObject("kmsum2", kmsum);
				mav.addObject("jooyusum2", jooyusum);
				mav.addObject("jungbisum2", jungbisum);
				mav.addObject("buysum2", buysum);
				mav.setViewName("carbook/graphA");
			return mav;
		   }
	   
/*//	 //그래프 보여주기
//	   @RequestMapping("/graph.do")
//	   public ModelAndView CarGraphList(String id,HttpServletRequest req){
//	     
//	      List<CarCostDTO> list=CarCostDao.GraphCostList(id);
//		  ModelAndView mav=new ModelAndView();
//		  mav.addObject("list", list);
//		  mav.setViewName("carbook/graph");
//	      return mav;
//	   }
*/	}