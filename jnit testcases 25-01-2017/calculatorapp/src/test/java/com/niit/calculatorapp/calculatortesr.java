package com.niit.calculatorapp;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class calculatortesr {

	private static calculator calc;
	public void setup() {
		  calc = new calculator();

	}
	
	@After
	public   void teardown() {
	 calc=null;

	}
	
	
	
	@Test
	public void testadd() {
		
	calculator calc=new calculator();
	assertEquals("the expected value did not match with val",30,calc.add(10,20));

	
	
	}
	
	@Test(expected=java.lang.ArithmeticException.class)
	public void testdevide() {
		
	calculator calc=new calculator();
	assertEquals("the expected value did not match with val",calc.divide(10,0));
	}
	@Test
	public void testsub () {
		
	calculator calc=new calculator();
	assertEquals("the expected value did not match with val",10,calc.substract(10,20));
	
	
	
	
	
	}

}
