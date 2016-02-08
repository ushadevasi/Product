<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="javascripts/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/angular.min.js"></script>
<script type="text/javascript" src="javascripts/bootstrap.min.js"></script>
<script type="text/javascript" src="javascripts/app.js"></script>
<link rel="stylesheet" href="stylesheets/bootstrap.min.css"></link>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
<div class="container-fluid">
	<div class="row">	
	<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<div class="col-md-4">
			<h2>
              <img src="images/apple-iphone-3.jpg" />
			  </h2>
			  <p>
				Apple's iOS did not have an official name until the release of the iPhone software development kit (iPhone SDK) on March 6, 2008. Before then, Apple marketing literature simply stated that their iPhone runs a version of OS X, a reference to iOS' parent operating system. When introduced, it was named iPhone OS. It was renamed iOS on June 7, 2010, as, with the introduction of the iPad as well as the existence of the iPod Touch, the iPhone was no longer the only device to run the mobile operating system. iOS 4 was the first major release to reflect this change. Apple licensed the "iOS" trademark from Cisco.
		
				<a class="btn" href="productInfo?productId=0">View details »</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>
				<img src="images/samsung-galaxy-tab-e-80.jpg" class="media-object" />
			</h2>
			<p>
				Samsung was founded by Lee Byung-chul in 1938 as a trading company. Over the next three decades, the group diversified into areas including food processing, textiles, insurance, securities and retail. Samsung entered the electronics industry in the late 1960s and the construction and shipbuilding industries in the mid-1970s; these areas would drive its subsequent growth. Following Lee's death in 1987, Samsung was separated into four business groups – Samsung Group, Shinsegae Group, CJ Group and Hansol Group. Since 1990s, Samsung has increasingly globalized its activities and electronics, particularly mobile phones and semiconductors, have become its most important source of income.
			
				<a class="btn" href="productInfo?productId=1">View details »</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>
				<img src="images/motorola-moto-x-force1.jpg" />
			</h2>
			<p>
				Motorola designed and sold wireless network equipment such as cellular transmission base stations and signal amplifiers. Motorola's home and broadcast network products included set-top boxes, digital video recorders, and network equipment used to enable video broadcasting, computer telephony, and high-definition television. Its business and government customers consisted mainly of wireless voice and broadband systems (used to build private networks), and, public safety communications systems like Astro and Dimetra. These businesses (except for set-top boxes and cable modems) are now part of Motorola Solutions.
			
				<a class="btn" href="productInfo?productId=2" >View details »</a>
			</p>
		</div>
	</div>
	
</div>
 <jsp:include page="footer.jsp"/>
</body>
</html>