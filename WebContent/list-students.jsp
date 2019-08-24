<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
	<title>Student Tracker App</title>
	
	<link type="text/css" rel="stylesheet" href="CSS/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>State University</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
		
			<input type="button" value="Add Student"
				onclick="window.location.href='add-student-form.jsp'; return false;"
				class="add-student-button btn btn-outline-primary" />
				
				<form action="StudentControllerServlet" method="GET">
					<input type="hidden" name="command" value="SEARCH" />
					Search Student: <input type="text" name="theSearchName" placeholder="Search" />
					<input type="submit" value="Search" class="add-student-button btn btn-outline-primary btn-sm" />
				</form>
				
			<table>
				
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email </th>
					<th>Action</th>
				</tr>
				
				<!-- set up link to update each student -->
				<c:forEach var="tempStudent" items="${STUDENT_LIST}">
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentId" value="${tempStudent.id }" />
					</c:url>
				
				<!-- set up a link to delete each student -->
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentId" value="${tempStudent.id }" />
					</c:url>
				
					<tr>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.email}</td>
						<td><button class="btn btn-warning btn-sm" onclick="window.location.href='${tempLink}'">Update</button>
							|
							<button onclick="if (!(confirm('Are you sure you want to delete this student?'))){ return false } else {window.location.href='${deleteLink}'}"
								class="btn btn-danger btn-sm ">Delete</button>
						</td>	
					</tr>
				</c:forEach>
				
			</table>
			
		</div>
	</div>


</body>

</html>