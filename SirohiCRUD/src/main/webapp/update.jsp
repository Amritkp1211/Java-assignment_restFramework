<%@page import="com.bean.Sirohi"%>
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
   Sirohi s=(Sirohi)request.getAttribute("s");
%>
	<form name="update" method="post" action="SirohiController">
		<table cellspaing="20" cellpadding="20">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=s.getId()%>"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%=s.getName()%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" value="<%=s.getAddress()%>"></textarea></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><input type="date" name="dob" value="<%=s.getDob()%>"></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" value="<%=s.getMobile()%>"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<%
              if(s.getGender().equals("male")){
          %>
				<td><input type="radio" name="gender" value="male" checked="checked">MALE
					 <input type="radio" name="gender" value="female">FEMALE</td>
				<%}
              else{
            	  %>
				<td><input type="radio" name="gender" value="male">MALE
					<input type="radio" name="gender" value="female" checked="checked">FEMALE
				</td>
				<%
              }
                 %>
			</tr>
			<tr>
				<td>Qualification</td>
				   <% if(s.getQuali().equals("ba")){ %>
				<td><input type="checkbox" name="quali" value="ba" checked="checked">BA <input
					type="checkbox" name="quali" value="bsc">BSC <input
					type="checkbox" name="quali" value="bcom">BCOM</td>
					<%}
					else if(s.getQuali().equals("bsc")){
					%>
					<td><input type="checkbox" name="quali" value="ba">BA <input
					type="checkbox" name="quali" value="bsc" checked="checked">BSC <input
					type="checkbox" name="quali" value="bcom">BCOM</td>
					<%}
					else{
						%>
						<td><input type="checkbox" name="quali" value="ba" >BA <input
					type="checkbox" name="quali" value="bsc">BSC <input
					type="checkbox" name="quali" value="bcom" checked="checked">BCOM</td>
						<%
					}
					%>
			</tr>
			<tr>
				<td>Hobby</td>
				<td><select name="hobby">
				 <% 
				 if(s.getHobby().equals("playing")){%>
				  <option>--select hobby--</option>
						<option Value="playing" selected="selected">PLAYING</option>
						<option Value="singing">SINGING</option>
						<option Value="sleeping">SLEEPING</option>
				 <% }
				 else if(s.getHobby().equals("singing")){%>
				  <option>--select hobby--</option>
						<option Value="playing">PLAYING</option>
						<option Value="singing" selected="selected">SINGING</option>
						<option Value="sleeping">SLEEPING</option>
				 <%}
				 else{%>
				 <option>--select hobby--</option>
						<option Value="playing">PLAYING</option>
						<option Value="singing">SINGING</option>
						<option Value="sleeping" selected="selected">SLEEPING</option>
				
				 <%
				 }
				 %>
						</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="action" value="update"></td>
			</tr>


		</table>
	</form>

</body>
</html>