package com.spring.SpringInheritance;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
     ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
     Student s=(Student) a.getBean("s2");
     System.out.println("id: "+s.getId());
     System.out.println("first name: "+s.getFname());
     System.out.println("Last Name: "+s.getLname());
     System.out.println("email: "+s.getEmail());
    }
}
