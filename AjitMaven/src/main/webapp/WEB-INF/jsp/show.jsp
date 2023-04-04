<%@page import="java.util.List"%>
<%@page import="com.bean.Ajit"%>
<%@page import="com.dao.AjitDao"%>
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
    AjitDao ajitDao=(AjitDao)a.getBean("ajitDao");
     List<Ajit> list=ajitDao.getAllAjitians();
%>

<table width="100%" border="1" cellspaing="10px" cellpadding="10px">
    <tr>
       <th>ID</th>
       <th>NAME</th>
       <th>EMAIL</th>
       <th>EDIT</th>
       <th>DELETE</th>
    </tr>
   
    <tr>
     <%
      for(Ajit b:list){
       %>
        <td><%=b.getId() %></td>
        <td><%=b.getName() %></td>
        <td><%=b.getEmail()%></td>
        <td>
           <form  name="edit" method="post" action="edit">
                 <input type="hidden" name="id" value="<%=b.getId()%>">
                 <input type="submit" name="action" value="edit">
           </form>
        </td>
        <td>
           <form  name="delete" method="post" action="delete">
                 <input type="hidden" name="id" value="<%=b.getId()%>">
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