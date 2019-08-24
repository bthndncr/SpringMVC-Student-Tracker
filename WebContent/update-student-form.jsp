<html>

<head>
	<title>Update Student</title>
	
	<link type="text/css" rel="stylesheet" href="CSS/style.css" >
	<link type="text/css" rel="stylesheet" href="CSS/add-student-style.css" >
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	
	
</head>



<body>

	<div id="wrapper">
		<div id="header">
			<h2>State University</h2>
		</div>
	</div>

	<div id="container">
	<h3>Add Student</h3>
	
		<form action="StudentControllerServlet" method="GET">
			<input type="hidden" name="command" value="UPDATE"/>
			<input type="hidden" name="studentId" value="${THE_STUDENT.id }"/>
			
					<label>First Name: </label>
					<input type="text" name="firstName" value="${THE_STUDENT.firstName }"><br/>
				
					<label>Last Name: </label>
					<input type="text" name="lastName" value="${THE_STUDENT.lastName }"><br/>
				
					<label>Email: </label></td>
					<input type="text" name="email" value="${THE_STUDENT.email }"><br/>
				
					<label></label>
					<input type="submit" value="Save" class="save btn btn-outline-primary">
			
		</form>	
		
		<a href="StudentControllerServlet">Back to List</a>
	
	</div>

		



</form>

</body>

</html>