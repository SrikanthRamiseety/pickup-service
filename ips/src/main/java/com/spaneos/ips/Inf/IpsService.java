package com.spaneos.ips.Inf;

import java.util.List;

import com.spaneos.ips.pojo.Pickup;
import com.spaneos.ips.pojo.User;


public interface IpsService {
	
	boolean AddContact(User user);
	List<User> getAllUser();
	User getUser(String email);
	 
	boolean addpickup(Pickup pickup);
	

}
