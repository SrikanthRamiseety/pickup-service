package com.spaneos.ips.Dao;

import java.util.ArrayList;
import java.util.List;

import com.spaneos.ips.Inf.IpsService;
import com.spaneos.ips.pojo.Address;
import com.spaneos.ips.pojo.Pickup;
import com.spaneos.ips.pojo.User;

public class IpsServiceImp implements IpsService {
   private List<User> list;
	@Override
	public boolean AddContact(User user) {
		list=new ArrayList<User>();
		if(list.add(user)){
			
			return true;
		}
		
		
		return false;
	}
	@Override
	public List<User> getAllUser() {
			
		return list;
	}
	@Override
	public User getUser(String email) {
		User user1=new User();
		for(User user:list){
			if(user.getEmail().equalsIgnoreCase(email)){
				user1.setPassword(user.getPassword());
				user1.setEmail(user.getEmail());
				user1.setFirstname(user.getFirstname());
				user1.setLastname(user.getLastname());
				Address add=new Address();
				add.setCity(user.getAddress().getCity());
				add.setMobile(user.getAddress().getMobile());
				add.setStreet(user.getAddress().getStreet());
				add.setState(user.getAddress().getState());
				add.setPincode(user.getAddress().getPincode());
				user1.setAddress(add);
				 
			}
		}
		 
		return user1;
	}
	@Override
	public boolean addpickup(Pickup pickup) {
		List<Pickup>  list2=new ArrayList<Pickup>();
		if(list2.add(pickup)){
			return true;
		}
		 
		return false;
	}

}
