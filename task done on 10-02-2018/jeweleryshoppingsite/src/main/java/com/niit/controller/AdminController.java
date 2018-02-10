package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DaoImpl.CategoryDaoImpl;
import com.niit.DaoImpl.ProductDaoImpl;
import com.niit.DaoImpl.SupplierDaoImpl;
import com.niit.Model.Category;

public class AdminController {

	
	@Autowired
	SupplierDaoImpl supplierDaoimpl;
	
	@Autowired
	ProductDaoImpl productDaoimpl;

	@Autowired
	CategoryDaoImpl categoryDaoimpl;
	
	@RequestMapping(value="/savecat", method=RequestMethod.POST)
	
	public ModelAndView savecategoryData(@RequestParam("cid")int cid,@RequestParam("cname")String cname)
	{
		ModelAndView mv=new ModelAndView();
		
		
		Category c=new Category();
		System.out.println("admin 1");
	c.setCid(cid);
	System.out.println("admin 2");
		
	c.setCname(cname);
	System.out.println("admin 3");
		
	categoryDaoimpl.insertCategory(c);
	
	System.out.println("admin 4");
		mv.setViewName("Adminadding");
		
return  mv;
		
		
	}
}
