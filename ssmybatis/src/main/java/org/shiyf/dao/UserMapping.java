package org.shiyf.dao;

import java.util.List;

import org.shiyf.entity.UserInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapping {
	UserInfo selectOne(String username);
	List<UserInfo> selectList();
	void addOne(UserInfo userInfo);
}
