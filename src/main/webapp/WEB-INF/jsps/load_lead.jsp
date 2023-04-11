<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html style="--r: 56px; /* control the size */
--c1: #3FB8AF /*color 1*/ 99%,#0000 101%;
--c2: #FF9E9D /*color 2*/ 99%,#0000 101%;

--s:calc(var(--r)*.866);  /* .866 = cos(30deg) */
--g0:radial-gradient(var(--r),var(--c1));
--g1:radial-gradient(var(--r),var(--c2));
--f:radial-gradient(var(--r) at calc(100% + var(--s)) 50%,var(--c1));
--p:radial-gradient(var(--r) at 100% 50%,var(--c2));
background:
  var(--f) 0 calc(-5*var(--r)/2),
  var(--f) calc(-2*var(--s)) calc(var(--r)/2),
  var(--p) 0 calc(-2*var(--r)),
  var(--g0) var(--s) calc(-5*var(--r)/2),
  var(--g1) var(--s) calc( 5*var(--r)/2),
  radial-gradient(var(--r) at 100% 100%,var(--c1)) 0 calc(-1*var(--r)),   
  radial-gradient(var(--r) at 0%   50% ,var(--c1)) 0 calc(-4*var(--r)),
  var(--g1) calc(-1*var(--s)) calc(-7*var(--r)/2),
  var(--g0) calc(-1*var(--s)) calc(-5*var(--r)/2),
  var(--p) calc(-2*var(--s)) var(--r),
  var(--g0) calc(-1*var(--s)) calc(var(--r)/ 2),
  var(--g1) calc(-1*var(--s)) calc(var(--r)/-2),
  var(--g0) 0 calc(-1*var(--r)),
  var(--g1) var(--s) calc(var(--r)/-2),
  var(--g0) var(--s) calc(var(--r)/ 2) 
  #FF9E9D; /*color 2 again here */
background-size: calc(4*var(--s)) calc(6*var(--r));">
<head>
<meta charset="ISO-8859-1">
<title>Lead | Form</title>
</head>
<body>
	<h2 align="center">Lead | Form | Registration</h2>
	<form action="createLead" method="post">
		<table align="center">
			<tr>
				<td><hr></td>
				<td><hr></td>
			</tr>
			<tr>
				<td>Aadhaar_ID:~</td>
				<td><input type="number" name="aadhaarId"/></td>
			</tr>
			<tr>
				<td>Name:~</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>Address:~</td>
				<td><input type="text" name="address"/></td>
			</tr>
			<tr>
				<td>Email_ID:~</td>
				<td><input type="email" name="email"/></td>
			</tr>
			<tr>
				<td>Mobile_NO:~</td>
				<td><input type="tel" name="mobile"/></td>
			</tr>
			<tr>
				<td><hr></td>
				<td><hr></td>
			</tr>
			<tr>
				<td></td>
				<td align="center"><input type="submit" value="Create a Lead"/></td>
			</tr>
			<tr>
				<td><hr></td>
				<td><hr></td>
			</tr>
		</table>
	</form>
</body>
</html>