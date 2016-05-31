package su.pool.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import su.pool.model.*;

@Controller
public class PoolRateController {

	@Autowired
	private PoolRateDAO poolRateDao;

	public PoolRateDAO getPoolRateDao() {
		return poolRateDao;
	}

	public void setPoolRateDao(PoolRateDAO poolRateDao) {
		this.poolRateDao = poolRateDao;
	}
	
	
}
