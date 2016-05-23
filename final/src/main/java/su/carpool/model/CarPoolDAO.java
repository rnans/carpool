package su.carpool.model;

import java.util.*;
import su.member.model.*;

public interface CarPoolDAO 
{
	
	public MemberDTO getUserInfo(String userid);
	public CarPoolDTO getCarInfo(String userid);
}
