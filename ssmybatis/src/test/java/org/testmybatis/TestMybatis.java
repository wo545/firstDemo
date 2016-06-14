package org.testmybatis;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.shiyf.entity.UserInfo;
import org.shiyf.services.UserServices;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class) // 
@ContextConfiguration(locations = { "classpath:ApplicationContext.xml" })

public class TestMybatis {
//	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	// private ApplicationContext ac = null;
	@Resource
	private UserServices userServices ;

	// @Before
	// public void before() {
	// ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	// userService = (IUserService) ac.getBean("userService");
	// }

	@Test
	//@Transactional
	public void test1() {
		//List<UserInfo> li=userServices.getUsers();
//		for (UserInfo userInfo : li) {
//			System.out.println(userInfo);
//		}
//		userServices.getUsers();
		List li=new ArrayList();
		for(int i=0;i<2;i++){
			UserInfo ui=null;
			ui=new UserInfo();
			ui.setUsername("newTest"+i);
			ui.setPassword("234234234");
			ui.setAge("19");
			ui.setSex("2");
			li.add(ui);
		}
		userServices.addUser(li);
//		userServices.getUsers();
//		ui.setUsername("newTest2");
//		userServices.addUser(ui);
		// System.out.println(user.getUserName());
		// logger.info("ֵ��"+user.getUserName());
	//	logger.info(JSON.toJSONString(user));
	}
	
}