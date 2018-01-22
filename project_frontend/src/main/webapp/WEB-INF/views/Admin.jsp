<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Admin Page</title>
</head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<br>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<div class="container">
  <h2>WELCOME ADMIN</h2>
  <ul class="nav nav-tabs">
    <li><a href="#home">Home</a></li>
    <li><a href="#menu1">Supplier</a></li>
    <li><a href="#menu2">Category</a></li>
    <li><a href="#menu3">Product</a></li>
  </ul>

 <!--  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
       <button type="submit" class="btn btn-default">Check Supplier</button>
      <button type="submit" class="btn btn-default">Check Category</button>
       <button type="submit" class="btn btn-default">Check Product</button>
    </div> -->
    <div id="menu1" class="tab-pane fade">
    <div class="container">
  <h2>Supplier</h2>
  <form:form  class="form-horizontal" action="AddSupplier" modelAttribute="supplier" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter ID" name="supid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Name" name="supname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Address:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Address" name="supaddress">
      </div>
    </div>
   <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form:form>
</div>
      
    </div>
    <div id="menu2" class="tab-pane fade">
       <div class="container">
  <h2>Category</h2>
  <form:form  class="form-horizontal" action="AddCategory" modelAttribute="category" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter Catogery ID" name="catId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Catogery Name" name="catName">
      </div>
    </div>
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form:form>
</div>
       
    </div>
    <div id="menu3" class="tab-pane fade">
      <div class="container">
  <fieldset>
  <legend>ENTER PRODUCT DETAILS</legend>
  <form class="form-horizontal" action="AddProduct" modelAttribute="product" enctype="multipart/form-data" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control"  placeholder="Enter Product ID" name="pid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT NAME:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Product Name" name="pname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT PRICE:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Price" name="pprice">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT STOCK:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Stock" name="pstock">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT DESCRIPTION:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control"  placeholder="Enter Description" name="pdesc">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2">PRODUCT IMAGE:</label>
      <div class="col-sm-10">
      <table>
       <tr><td> <input type="file" name="pimage" accept="image/*"></td>
  </table>
      </div>
    </div>
     <%-- <div class="form-group">
				      <label class="control-label col-sm-2">CATEGORY NAME:</label>
				<td>	<select class="form-control" name="catname"  >
				<option value="">----category choices----</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.catid}">${category.catname}</option></c:forEach>
					
				</select></td>
			</div>
			<div class="form-group">
				      <label class="control-label col-sm-2">SUPPLIER ID:</label>
							<td>	<select class="form-control" name="supid"  >
				<option value=""> ----supplier choices----</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.supid}">${supplier.supname}</option></c:forEach>
				</select></td>
			</div>  
	 --%>		
        <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
 
</div>
      
    </div>
     </fieldset>
  </div>
</div>

<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>