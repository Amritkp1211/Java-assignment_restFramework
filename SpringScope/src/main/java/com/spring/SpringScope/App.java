package com.spring.SpringScope;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
    	Student s1=(Student) a.getBean("s1");
    	
    	s1.setId(1);
    	s1.setFname("amrit");
    	s1.setLname("prjpt");
    	s1.setEmail("amritkp1211@gamil.com");
    	
    	System.out.println(s1);
    }
}
