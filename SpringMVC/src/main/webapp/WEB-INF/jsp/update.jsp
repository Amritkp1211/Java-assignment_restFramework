<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
  Student s=(Student)request.getAttribute("s");
%>
<body>
   <form name="insert" action="update">
      <table>
          <tr> 
            <td><input type="hidden" name="id" value="<%=s.getId()%>"></td>
         </tr>
         <tr> 
            <td>First Name</td>
            <td><input type="text" name="fname" value="<%=s.getFname()%>">
         </tr>
         <tr> 
            <td>Last Name</td>
            <td><input type="text" name="lname" value="<%=s.getLname()%>">
         </tr>
         <tr> 
            <td>First Name</td>
            <td><input type="text" name="email" value="<%=s.getEmail()%>">
         </tr>
         <tr>
            <td colspan="2" align="center">
            <input type="submit" name="action" value="update">
            </td>
         </tr>
      </table>`
   </form>
</body>
</html>