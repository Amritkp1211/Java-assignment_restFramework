package com.spring.SpringcCollections;

public class Person {

	private String pname,address;
	private int age;
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String toString() {
		return "Person Name: "+pname+"\nage:"+age+"\naddress: "+address;
	}
	
}
