<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Musical Instruments</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="${pageContext.request.contextPath}//UpdateProduct" modelAttribute="product">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr>
		<td>Product ID</td>
		<td><form:input path="pid"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="pname"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:input path="pdesc"/></td>
	</tr>
	<tr>
	<td>Product Stock</td>
		<td><form:input path="pstock"/></td>
	</tr>
	<tr>
	<td>Product Price</td>
		<td><form:input path="pprice"/></td>
	</tr>
	<tr>
	<td>CatName</td>
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
	<td>SupId</td>
		<td><form:input path="supid"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateProduct"/>
			<button type="Product.jsp"  class="btn btn-default">Cancel</button></center>
		</td>
	</tr>
	
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Product Stock</td>
	<td>Product Price</td>
	<td>CatName</td>
	<td>SupId</td> 
	<td>Operation</td>
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
			<a href="<c:url value="deleteProduct/${product.pid}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.pid}"/>">UPDATE</a>
		</td>
	</tr>
	
</c:forEach>

</table>

</body>
</html>