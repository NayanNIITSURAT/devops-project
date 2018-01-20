package com.Daoimpl;

import com.Dao.UserDao;

public class UserDaoimpl implements UserDao
{
	
	@Override
	public void show(String emailid)
	{
		System.out.println(emailid);
	}

}
