package com.spring.SpringcCollections;

import java.util.Collection;

public class Customer {
	
	private Collection<Object> lists;

	public Collection<Object> getLists() {
		return lists;
	}

	public void setLists(Collection<Object> lists) {
		this.lists = lists;
	}
	
	public String toString() {
		return "list: "+lists;
	}

}
