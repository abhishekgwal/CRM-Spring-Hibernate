<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	<link type = "text/css"
			rel = "stylesheet"
			href = "${pageContext.request.contextPath}/resources/css/style.css" />	
</head>

<body>

	<div id = "wrapper">
		<div id = "header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<br>
	<input type = "submit" value ="Add Customer"  
	onClick = "window.location.href = 'showFormForAdd'" class = "add-button"/>
	<br>
	
	<div id ="container">
	
		<div id = "content">
		
	<!-- Add html table here -->
		
		<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
		
		<!-- Loop over and print our customers-->
		<c:forEach var ="tempCustomer" items="${customers}">
			<tr>
				<td> ${tempCustomer.firstName} </td>
				<td> ${tempCustomer.lastName} </td>
				<td> ${tempCustomer.emailId} </td>
			</tr>

		</c:forEach>
		</table>	
		</div>	
		
	</div>

</body>

</html>