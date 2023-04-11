<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>List | Leads</title>
</head>
<body>
	<h2 align="center">List | Leads</h2><hr>
	<table align="center" border="1">
		<tr>
			<th>SL</th>
			<th>Aadhaar_ID</th>
			<th>Name</th>
			<th>Address</th>
			<th>Email_ID</th>
			<th>Mobile_NO</th>
		</tr>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.id}</td>
				<td><a href="leadInfo?id=${list.id}">${list.aadhaarId}</a></td>
				<td>${list.name}</td>
				<td>${list.address}</td>
				<td>${list.email}</td>
				<td>${list.mobile}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>