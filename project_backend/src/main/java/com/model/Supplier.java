
package com.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.*;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table

public class Supplier implements Serializable
{

	private static final long serialVersionUID =1L;
	
	@Id
	private int supid;
	private String supname,supaddress;
	public int getSupid() {
		return supid;
	}
	public void setSupid(int supid) {
		this.supid = supid;
	}
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSupaddress() {
		return supaddress;
	}
	public void setSupaddress(String supaddress) {
		this.supaddress = supaddress;
	}
	
	}
