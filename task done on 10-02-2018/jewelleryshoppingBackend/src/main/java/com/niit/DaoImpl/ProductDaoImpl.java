package com.niit.DaoImpl;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.niit.Dao.ProductDao;
import com.niit.Model.Product;

 

@Repository
@Service
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	public ProductDaoImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}
	public   ProductDaoImpl() {
		System.out.println("Product dao successfully created");
		}

	@Transactional
	public void insertProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(product);
		session.getTransaction().commit();
		session.close();
	}
	
	@Transactional
	public void updateProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(product);
		session.getTransaction().commit();
		session.close();
		
	}

	@Transactional
	public void deleteProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.delete(product);
		session.getTransaction().commit();
		session.close();
	}

	@Transactional
	public Product getProduct(int pid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product product = session.get(Product.class, pid);
		session.getTransaction().commit();
		session.close();
		return product;
	}

	@Transactional
	public List<Product> getAllProduct() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query =  session.createQuery("FROM Product");
		List<Product> productsList = query.list();
		return productsList;
	}

	

}