package com.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CategoryDAO;
import com.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	
	/*@RequestMapping(value="AddCategory",method=RequestMethod.POST)
	public String addCategory(@RequestParam("catId") int catId,@RequestParam("catName") String catName,@RequestParam("catDesc") String catDesc,Model m)
	{
		Category category=new Category();
		category.setCatId(catId);
		category.setCatName(catName);
		
		
		categoryDAO.addCategory(category);
		
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		
		return "Category";
	}*/
	
	@RequestMapping(value="AddCategory",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category")Category category,Model m)
	{
		categoryDAO.addCategory(category);
		
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		
		return "Category";
	}
	
	@RequestMapping(value="category",method=RequestMethod.GET)
	public String showCategory(Model m)
	{
		Category category=new Category();
		m.addAttribute(category);
		  
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	
    @RequestMapping(value="updateCategory/{catId}",method=RequestMethod.GET)
	public String updateCategory(@PathVariable("catId") int catId,Model m)
	{
		Category category=categoryDAO.getCategory(catId);
		m.addAttribute(category);
		
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "UpdateCategory";
	}
    
	@RequestMapping(value="UpdateCategory",method=RequestMethod.POST)
	public String updateMyCategory(@ModelAttribute("category")Category category,Model m)
	{
		categoryDAO.updateCategory(category);
		Category category1= new Category();
		m.addAttribute(category1);
		
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	@RequestMapping(value="deleteCategory/{catId}",method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("catId")int catId,Model m)
	{
		Category category=categoryDAO.getCategory(catId);
		categoryDAO.deleteCategory(category);
		List<Category> listCategory=categoryDAO.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
}
