<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<!DOCTYPE html>

<html>
	<head>
		<title>Customer Registration Form</title>
		<link type = "text/css"
			rel = "stylesheet"
			href = "${pageContext.request.contextPath}/resources/css/style.css" />
			
			<link type = "text/css"
			rel = "stylesheet"
			href = "${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
	</head>
	
	<body>
		<div id = "wrapper">
		<div id = "header">
			<h2><center>Welcome to Customer Relationship Manager Registration</center></h2>
		</div>
	</div>
	
		<div id ="container">
			
	<br>
	<form:form action="processForm" modelAttribute="customers" method = "POST">
	
	<!--Line 30: V. Imp for updating the current rows. Line 30, associates data with customer Id  -->
	<form:hidden path = "id"/>
		First Name: <form:input path="firstName"  placeholder="First Name"/>
	<br><br>
	 	Last Name: <form:input path="lastName" placeholder="Last Name"/>
	 <br><br>
	 	Email: <form:input path = "emailId" placeholder="Your email id"/>
	 <br><br>
	 <input type= "submit"/>
	 <br><br>
	 <a href="list">Back to List</a>	
	 </form:form>

	 </div>
	 	
	</body>
	
</html>