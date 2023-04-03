<%@page import="com.dao.SirohiDao"%>
<%@page import="com.bean.Sirohi"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<%
   List<Sirohi> list=SirohiDao.getAllSirohi();
%>
<table  width="100%" border="1" cellpadding="10px" cellspaing="10px">
    <tr>
       <th>ID</th>
       <th>NAME</th>
       <th>EMAIL</th>
       <th>ADDRESS</th>
       <th>MOBILE</th>
       <th>GENDER</th>
       <th>DOB</th>
       <th>QUALI</th>
       <th>HOBBY</th>
       <th>EDIT</th>
       <th>DELETE</th>
    </tr>
    <%
     for(Sirohi s:list){
    %>
    <tr>
       <td><%=s.getId()%></td>
       <td><%=s.getName() %></td>
       <td><%=s.getEmail()%></td>
       <td><%=s.getAddress()%></td>
       <td><%=s.getMobile()%></td>
       <td><%=s.getGender()%></td>
       <td><%=s.getDob()%></td>
       <td><%=s.getQuali() %></td>
       <td><%=s.getHobby() %></td>
       <td>
          <form name="edit" method="post" action="SirohiController">
               <input type="hidden" name="id" value="<%=s.getId()%>">
               <input type="submit" name="action" value="edit" class="btn btn-primary">
          </form>
       </td>
       <td>
          <form name="delete" method="post" action="SirohiController">
               <input type="hidden" name="id" value="<%=s.getId()%>">
               <input type="submit" name="action" value="delete" class="btn btn-danger">
          </form>
       </td>
    </tr>
    <%
     }
%>
</table>
<a href="insert.jsp">add another sirohi</a>

</body>
</html>