package com.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Ajit;

public class AjitDao {
  
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	 
	@Transactional
	public void insert(Ajit a) {
		  hibernateTemplate.saveOrUpdate(a);
	}
	
	@Transactional
	public List<Ajit> getAllAjitians(){
		return hibernateTemplate.loadAll(Ajit.class);	
	}
	
	@Transactional
   public Ajit getAjitian(int id){
	return hibernateTemplate.get(Ajit.class,id);
	}
	
	@Transactional
	public void delete(int id) {
		 Ajit a=hibernateTemplate.get(Ajit.class,id);
		 hibernateTemplate.delete(a);
	}
}
