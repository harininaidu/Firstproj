package com.niit.shopingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;

public class ProductTest {
	
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		Product p = (Product)context.getBean("product");
		
	  
	    p.setId("PRD_001");
	    p.setName("sofa");
	    p.setDescription("cushion sofa");
	    p.setPrice(8000);
	    p.setCategory_id("CAT_001");
	    p.setSupplier_id("SUP_001");
	    
	    ProductDAO productDAO = (ProductDAO)context.getBean("productDAO");
	    productDAO.saveOrUpdate(p);
		
	    p.setId("PRD_002");
	    p.setName("corelle dining");
	    p.setDescription("spacious dining");
	    p.setPrice(10000);
	    p.setCategory_id("CAT_002");
	    p.setSupplier_id("SUP_002");
		    
	    productDAO.saveOrUpdate(p);
	    
	    p.setId("PRD_003");
	    p.setName("soft mats");
	    p.setDescription("cozy mats for absorption");
	    p.setPrice(1000);
	    p.setCategory_id("CAT_003");
	    p.setSupplier_id("SUP_003");
		    
	    productDAO.saveOrUpdate(p);
		
	}

}
