<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="javascripts/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/angular.min.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.min.js"></script>
<script type="text/javascript" src="javascripts/app.js"></script>
<link rel="stylesheet" href="stylesheets/bootstrap.min.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
			<form:form role="form" action="save" modelAttribute="comment">
			<div class="form-group">
					 
					<label for="name">
						Name
					</label>
					<form:input type="text" class="form-control" id="name" path="name"  />
				</div>
				<div class="form-group">
					 
					<label for="email">
						Email address
					</label>
					<form:input type="email" class="form-control" id="email" path="email" />
				</div>
				
				<div class="form-group">
					 
					<label for="comments">
						Comments
					</label>
					<form:textarea type="text" class="form-control" id="comments" path="commentText" />
				</div>
				
				<button type="submit" class="btn btn-default">
					Submit
				</button>
				<button type="reset" class="btn btn-default">
					Cancel
				</button>
			</form:form>
		</div>
	</div><div style="padding-top:8%">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>

</body>
</html>