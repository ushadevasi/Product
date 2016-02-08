<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html ng-app="product">
<head>
<script type="text/javascript" src="javascripts/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/angular.min.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.min.js"></script>
<script type="text/javascript" src="javascripts/app.js"></script>
<link rel="stylesheet" href="stylesheets/bootstrap.min.css"></link>

</head>
<body ng-controller="productController">
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="carousel.jsp"/>
			
			<table class="table table-responsive table-bordered table-striped">
				<thead>
				<tr>
				<td>
						<input type="text" ng-model="search.id" placeholder="SEARCH BY ID"/>
						</td>
						<td>
							<input type="text" ng-model="search.name" placeholder="SEARCH BY NAME"/>
						</td>
						<td>
							<input type="text" ng-model="search.email" placeholder="SEARCH BY EMAIL"/>
						</td>
						<td>
							<input type="text" ng-model="search.comment" placeholder="SEARCH BY COMMENTS"/>
						</td>
				</tr>
					<tr>
						
						<th>
							ID
						</th>
						<th>
							NAME
						</th>
						<th>
							EMAIL
						</th>
						<th>
							COMMENTS
						</th>
					</tr>
					
				</thead>
				<tbody>
				
					<tr ng-repeat="comment in data|filter:search:strict">
						<td>
							{{comment.id}}
						</td>
						<td>
							{{comment.name}}
						</td>
						<td>
							{{comment.email}}
						</td>
						<td>
							{{comment.commentText}}
						</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>
 <jsp:include page="footer.jsp"/>
</body>
</html>
