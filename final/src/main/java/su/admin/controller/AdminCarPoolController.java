package su.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import su.adminPool.model.AdminUserPoolDAO;

@Controller
public class AdminCarPoolController {

	@Autowired
	private AdminUserPoolDAO adUserPoolDao;

	public AdminUserPoolDAO getAdUserPoolDao() {
		return adUserPoolDao;
	}

	public void setAdUserPoolDao(AdminUserPoolDAO adUserPoolDao) {
		this.adUserPoolDao = adUserPoolDao;
	}
	
	
}
