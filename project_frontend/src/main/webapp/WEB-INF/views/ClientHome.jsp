    <%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<jsp:include page="UserHeader.jsp"></jsp:include>
<div class="carousel-inner">

<div class="item active">
<img class="img-rounded" class="img-responsive center-block"  style="width:100%" src="resources/Images/33.jpg"/>
</div>

<div class="item">
<img class="img-rounded" class="img-responsive center-block" style="width:100%" src="resources/Images/90.jpg"/>
</div>

<div class="item">
<img class="img-rounded" class="img-responsive center-block"  style="width:100%" src="resources/Images/333.jpg"/>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</head>
</body>
</html>