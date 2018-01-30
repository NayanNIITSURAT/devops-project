package com.niit.crudappbackend;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.Test;

import com.niit.bookbackend.dao.SupplierDAOImpl;
import com.niit.crudappbackend.model.Supplier;

public class junit {
	SupplierDAOImpl calc;
	public void setup() {
		  calc = new SupplierDAOImpl(null);
System.out.println("object is started");
	}
	
	@After
	public   void teardown() {
	 calc=null;
	 System.out.println("welcome again");
	}
	
	
	

	
}
