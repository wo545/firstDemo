package org.shiyf.services;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class Test {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		JdbcTemplate jt=new JdbcTemplate((DataSource) ac.getBean("dataSource"));
		jt.queryForList("select * from userinfo for update");
		System.out.println(0);
	}
}
