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

import com.dao.SupplierDAO;
import com.model.Supplier;

@Controller
public class SupplierController 
{	@Autowired
	SupplierDAO supplierDAO;
	
	

	
	@RequestMapping(value="AddSupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.addSupplier(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		
		return "Supplier";
	}
	
	@RequestMapping(value="Supplier",method=RequestMethod.GET)
	public String showSupplier(Model m)
	{
		Supplier supplier=new Supplier();
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
	@RequestMapping(value="updateSupplier/{supid}",method=RequestMethod.GET)
	public String updateSupplier(@PathVariable("supid") int supid,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supid);
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "UpdateSupplier";
	}
	
	@RequestMapping(value="UpdateSupplier",method=RequestMethod.POST)
	public String updateMySupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.updateSupplier(supplier);
		
		m.addAttribute(supplier);
		
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
		
	}
	
	@RequestMapping(value="deleteSupplier/{supid}",method=RequestMethod.GET)
	public String deleteSupplier(@PathVariable("supid")int supid,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supid);
		supplierDAO.deleteSupplier(supplier);
		m.addAttribute(supplier);
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}
   
}
