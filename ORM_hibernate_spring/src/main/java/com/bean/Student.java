package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="ORM_Spring_CRUD")
public class Student {
	@Id
    @GenericGenerator(name="inc",strategy = "increment")
    @GeneratedValue(generator = "inc")
	private int id;
	@Column(name="StudentName")
	private String sname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	@Override
	public String toString() {
		return "ID "+id+"Sname "+sname;
		
	}
	
}
