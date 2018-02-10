package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class AdminController {

	
	@Autowired
	SupplierDaoImpl supplierDaoimpl;
	
	@Autowired
	ProductDaoImpl productDaoimpl;

	@Autowired
	CategoryDaoImpl categoryDaoimpl;
	
	@RequestMapping(value="/savecat", method=RequestMethod.post)
	
	public ModelAndView savecategoryData(@requestParam("cid"),int cid,@RequestParam("cname")String cname)
	{
		ModelAndView mv=new ModelAndView();
		
		
		Category c=new Category();
		System.out.println("admin 1");
	c.setcname(cname);
	System.out.println("admin 2");
		
	c.setcname(cname);
	System.out.println("admin 3");
		
	categoryDaoimpl.insertCategory(c);
	
	System.out.println("admin 4");
		mv.setViewName("Adminadding");
		
return  mv;
		
		
	}
}
