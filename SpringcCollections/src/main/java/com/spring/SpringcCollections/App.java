package com.spring.SpringcCollections;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
    	Customer c1=(Customer) a.getBean("customer");
    	System.out.println(c1.getLists());
    }
}
