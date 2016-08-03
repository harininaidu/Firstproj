package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class CategoryTest {
	
	
	public static void main(String[] args) {
		
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	Category c =(Category)	  context.getBean("category");
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	c.setId("CAT_001");
	c.setName("Furniture");
	c.setDescription("Teak wood sets");
	categoryDAO.saveOrUpdate(c);
	c.setId("CAT_002");
	c.setName("Dining tables");
	c.setDescription("Glass emobossed");
	categoryDAO.saveOrUpdate(c);
	

	c.setId("CAT_003");
	c.setName("Floor furnishings");
	c.setDescription("Door mats");
	
	
	categoryDAO.saveOrUpdate(c);

	
	
	
	List<Category>  list =    categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}
