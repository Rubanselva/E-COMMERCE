<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Supplier-FashionFrontend</title>
</head>
<body>
<!-- <form action="AddSupplier" method="post">-->
<jsp:include page="AdminHeader.jsp"></jsp:include>

<form:form action="${pageContext.request.contextPath}//UpdateSupplier" modelAttribute="supplier" method="post">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Supplier Module</td>
	</tr>
	<tr>
		<td>Supplier ID</td>
		<!--<td><input type="text" name="supid"/></td>-->
		<td><form:input path="supid"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<!-- <td><input type="text" name="supname"/></td> -->
		<td><form:input path="supname"/></td>
	</tr>
	<tr>
		<td>Supplier Address</td>
		<!-- <td><input type="text" name="supaddress"/></td> -->
		<td><form:input path="supaddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateSupplier"/></center>
		</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Supplier ID</td>
	<td>Supplier Name</td>
	<td>Supplier Address</td>
	<td>Operation</td>
</tr>
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="cyan">
		<td>${supplier.supid}</td>
		<td>${supplier.supname}</td>
		<td>${supplier.supaddress}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.supid}"/>">DELETE</a>/
			<a href="<c:url value="updateSupplier/${supplier.supid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>

</body>
</html>