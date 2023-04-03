<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="insert" method="post" action="SirohiController">
<table cellspaing="20" cellpadding="20">
 <tr>
      <td>Name</td>
      <td><input type="text" name="name"></td>
 </tr>
 <tr>
      <td>Email</td>
      <td><input type="text" name="email"></td>
 </tr>
 <tr>
      <td>Address</td>
      <td><textarea rows="2" cols="25" name="address"></textarea></td>
 </tr>
 <tr>
      <td>DOB</td>
      <td><input type="date" name="dob"></td>
 </tr>
 <tr>
      <td>Mobile</td>
      <td><input type="text" name="mobile"></td>
 </tr>
 <tr>
      <td>Gender</td>
      <td><input type="radio" name="gender" value="male">MALE
          <input type="radio" name="gender" value="female">FEMALE
      </td>
 </tr>
 <tr>
      <td>Qualification</td>
      <td><input type="checkbox" name="quali" value="ba">BA
         <input type="checkbox" name="quali" value="bsc">BSC
         <input type="checkbox" name="quali" value="bcom">BCOM
      </td>
 </tr>
 <tr>
      <td>Hobby</td>
      <td>
      <select name="hobby">
            <option>--select hobby--</option>
            <option Value="playing">PLAYING</option>
            <option Value="singing">SINGING</option>
            <option Value="sleeping">SLEEPING</option>
       </select>
      </td>
 </tr>
 <tr>
      <td colspan="2" align="center">
            <input type="submit" name="action" value="insert">
      </td>
 </tr>
 

</table>
</form>
<a href="show.jsp">shows sirohi</a>
</body>
</html>