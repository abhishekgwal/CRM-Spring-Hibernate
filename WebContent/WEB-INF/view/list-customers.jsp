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
					<th>Action</th>
				</tr>
				
				
		<!-- Loop over and print our customers-->
	<c:forEach var ="tempCustomer" items="${customers}">
	
		<c:url var = "updateLink" value = "/customer/updateForm">
			<c:param name = "customerId" value = "${tempCustomer.id}" />
		</c:url>
		
		<c:url var = "deleteLink" value = "/customer/deleteForm">
			<c:param name = "customerId" value = "${tempCustomer.id}" />
		</c:url>
			<tr>
				<td> ${tempCustomer.firstName} </td>
				<td> ${tempCustomer.lastName} </td>
				<td> ${tempCustomer.emailId} </td>
				<td> <a href="${updateLink}">Update</a>
				 |  
				<a href="${deleteLink}"
					onclick = "if (!(confirm ('Are you sure you want to delete ?'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
		</table>	
		</div>	
		
	</div>

</body>

</html>