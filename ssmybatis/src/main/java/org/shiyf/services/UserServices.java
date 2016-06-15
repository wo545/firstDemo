package org.shiyf.services;

import java.util.List;

import org.shiyf.entity.UserInfo;

public interface UserServices {
	UserInfo getUserByName(String username);
	List<UserInfo> getUsers();
	void addUser(UserInfo userInfo);
	 void addUser(List<UserInfo> userInfo);
}
