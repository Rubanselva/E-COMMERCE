<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>LAPTOP SALES</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="AddProduct" modelAttribute="product" enctype="multipart/form-data" >
<table  align="center" cellspacing="2">
<table  cellspacing="2" align="center" >
<tr bgcolor="gray">
	<td>PRODUCT ID:</td>
	<td>PRODUCT NAME:</td>
	<td>PRODUCT DESCRIPTION:</td>
	<td>PRODUCT STOCK:</td>
	<td>PRODUCT PRICE:</td>
	<td>CATEGORY NAME:</td>
	<td>SUPPLIER ID:</td> 
	<td>IMAGES:</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.pid}</td>
		<td>${product.pname}</td>
		<td>${product.pdesc}</td>
		<td>${product.pstock}</td>
		<td>${product.pprice}</td>
		<td>${product.catName}</td>
		<td>${product.supid}</td>
		<td>
		<%--  <a href="productDetails/${product.pid }"> --%>
		<img src="<c:url value="/resources/Images/${product.pid }.jpg"/>" width="100px" height="100px">
		<!-- </a>  -->
		</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.pid}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.pid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>
</form:form>
</body>
</html>