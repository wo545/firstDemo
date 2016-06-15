package org.shiyf.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.shiyf.dao.UserMapping;
import org.shiyf.entity.UserInfo;
import org.shiyf.services.UserServices;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
@Service("userServices")
public class UserServicesImpl implements UserServices{
	@Resource
	private UserMapping userDao;
	
	public UserInfo getUserByName(String username) {
		// TODO Auto-generated method stub
		return userDao.selectOne(username);
	}

	public List<UserInfo> getUsers() {
		// TODO Auto-generated method stub
		return userDao.selectList();
	}

	public void addUser(UserInfo userInfo) {
		// TODO Auto-generated method stub
		userDao.addOne(userInfo);
	}
	@Transactional(isolation=Isolation.READ_COMMITTED)
	public void addUser(List<UserInfo> userInfo) {
		// TODO Auto-generated method stub
		for(int i=0;i<userInfo.size();i++){
			this.addUser(userInfo.get(i));
			if(i>2){
				throw new RuntimeException("Fail insert");
			}
		}
	}
}
