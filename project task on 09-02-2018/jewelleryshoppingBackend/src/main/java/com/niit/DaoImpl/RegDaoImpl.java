package com.niit.DaoImpl;
import org.hibernate.Session;

import com.niit.Dao.*;
import com.niit.Model.Registration;
import com.niit.config.HibernateConfig;
public class RegDaoImpl implements RegDao{
	private HibernateConfig config;

	
	@Override
	public boolean insertUser(Registration reg) {
		config = new HibernateConfig();

		Session session = config.getSessionFac(config.getH2Data()).openSession();
		session.beginTransaction();
		session.save(reg);
		session.getTransaction().commit();
		session.close();
		return true;
	}
	

}
