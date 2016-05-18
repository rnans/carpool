package su.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
public class CsCenterController {

	@RequestMapping("/csCenter.do")
	public String csCenter(){
		return "csCenter/notice";
	}
	@RequestMapping("/notice.do")
		public String notice(){
			return "csCenter/notice";
		}
	
	@RequestMapping("/qnaList.do")
		public String qndList(){
			return "csCenter/qnaList";
		}
	@RequestMapping("/oneAndOne.do")
	public String oneAndOne(){
		return "csCenter/oneAndOne";
	}
	@RequestMapping("useGuideList.do")
	public String useGuideList(){
		return "csCenter/useGuideList";
	}
	@RequestMapping("oneAndOneWriteForm.do")
	public String oneAndOneWriteForm(){
		return "csCenter/oneAndOneWriteForm";
	}
	}
	

