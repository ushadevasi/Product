<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductInfo</title>
<script type="text/javascript" src="javascripts/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/angular.min.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.min.js"></script>
<script type="text/javascript" src="javascripts/app.js"></script>
<link rel="stylesheet" href="stylesheets/bootstrap.min.css"></link>
</head>
<body>
	<div class="container-fluid">
	
		<div class="row">
			<div class="col-md-12">
			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"/>
			<ul class="breadcrumb">
				<li class="active">
					<a href="home" >Home</a> <span class="">></span>
				</li>
				<li>
					<a href="product">Product</a> <span class="">></span>
				</li>
				<li >
					<a href="#" class="active">Product Name</a> <span class="">></span>
				</li>
			</ul>
			<c:if test="${productId eq 0 }">
				<h3>APPLE IPHONE</h3>
			</c:if>
			<c:if test="${productId eq 1 }">
				<h3>SAMSUNG</h3>
			</c:if>
			<c:if test="${productId eq 2 }">
				<h3>MOTOROLA</h3>
			</c:if>
				<table class="table ">

					<tbody>
						<tr>
						<c:if test="${productId eq 0 }">
							<td><img src="images/apple-iphone-3.jpg" /></td>
							<td><img src="images/apple-iphone-6s1.jpg" /></td>
							<td><img src="images/apple-iphone-6s-plus.jpg" /></td>
                         </c:if>
                         <c:if test="${productId eq 1 }">
							<td><img src="images/samsung-galaxy-a5.jpg" /></td>
							<td><img src="images/samsung-galaxy-a7.jpg" /></td>
							<td><img src="images/samsung-galaxy-a9.jpg" /></td>
                         </c:if>
                          <c:if test="${productId eq 2 }">
							<td><img src="images/motorola-droid-turbo-2.jpg" /></td>
							<td><img src="images/moto-x-play-r.jpg" /></td>
							<td><img src="images/moto-x-style-r.jpg" /></td>
                         </c:if>
						</tr>

					</tbody>
				</table>
				
				<p>Details for latest versions of mobile in market will be displayed soon as our site is in progress</p>
				
			</div>
		</div>
	</div>
</body>
</html>