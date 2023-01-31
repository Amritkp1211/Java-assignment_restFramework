<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
StudentDao studentDao=(StudentDao)a.getBean("studentDao");
    List<Student> list=studentDao.getAllStudent();
    

%>

<table border="1" width="100%" cellpadding="10px" cellspacing="10px">
    <tr>
        <th>ID</th>
        <th>Student Name</th>
        <th>EDIT</th>
        <th>DELETE</th>
    </tr>
    
    <% for(Student s: list){ %>
    <tr>
        <td><%=s.getId() %></td>
        <td><%=s.getSname() %></td>
        <td>
            <form name="edit" method="post" action="ActionController">
                    <input type="hidden" name="id" value="<%=s.getId()%>">
                    <input type="submit" name="action" value="edit">
            </form>
        </td>
        <td>
            <form name="Delete" method="post" action="ActionController">
                    <input type="hidden" name="id" value="<%=s.getId()%>">
                    <input type="submit" name="action" value="delete">
            </form>
        </td>
     </tr>    
  <%
  }
    %>
</table>

</body>
</html>