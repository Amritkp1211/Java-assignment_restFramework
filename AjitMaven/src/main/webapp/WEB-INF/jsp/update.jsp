<%@page import="com.bean.Ajit"%>
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
  Ajit s=(Ajit)request.getAttribute("s");
%>
<form name="update" method="post" action="update">
    <table>
     <tr>
           <td>ID</td>
           <td><input type="text" name="id" value="<%=s.getId()%>"></td>
       </tr>
       <tr>
           <td>NAME</td>
           <td><input type="text" name="name" value="<%=s.getName()%>"></td>
       </tr>
       <tr>
           <td>Email</td>
           <td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
       </tr>
       <tr>
           <td colspan="2" align="center">
           <input type="submit" name="action" value="update">
           </td>
       </tr>
    </table>
</form>
</body>
</html>