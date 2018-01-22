
package com.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.*;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table

public class Category implements Serializable
{

	private static final long serialVersionUID =1L;
	
	@Id
	private int catId;
	private String catName;
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
	

	

	
	
	

