package su.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import su.emp.model.EmpDAO;
import su.emp.model.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired
	private EmpDAO empDao;	
	
	public EmpDAO getEmpDao() {
		return empDao;
	}

	public void setEmpDao(EmpDAO empDao) {
		this.empDao = empDao;
	}
	
	
	
	@RequestMapping("/emp.do")
	public String empAdd(){
		return "emp/emp";
	}
	
	@RequestMapping("/empAdd.do")
	public ModelAndView empAddAction(EmpDTO dto){
		int result=empDao.empAdd(dto);
		String msg=result>0?"사원등록 성공":"사원등록 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);		
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	

}
