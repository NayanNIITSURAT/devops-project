package com.niit.jewelleryshoppingbackendtest;

import org.junit.BeforeClass;
import org.junit.Test;


import com.niit.Dao.UserDao;

import com.niit.DaoImpl.UserDaoImpl;
import com.niit.Model.User;
import com.niit.config.HibernateConfig;

public class TestUserInsert {

	
	private static HibernateConfig config;
	private static UserDao userDao;
	
	@BeforeClass
	public static void setUp(){
		config = new HibernateConfig();
		userDao = new UserDaoImpl(config.getSessionFac(config.getH2Data()));
	}
	
	@Test
	public void testInsertUser(){
		User user  = new User();
		user.setFname("nayan");
		user.setLname("pipaliya");
		user.setEmail("nayan@gmail.com");
		user.setContact("8401803297");
		user.setDob("8/12/1994");
		user.setAddr("sruat");
		user.setPass("1234");
		user.setRole("user");
		user.setEnabled(true);
		
		
		userDao.insertUser(user);
	}
	
}
