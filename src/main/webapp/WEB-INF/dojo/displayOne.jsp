<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Dojo Page</title>
</head>
<body>
    <div class="container text-center">
        <h1 class="mt-5"><c:out value="${dojo.dojoName}"/> Ninjas</h1>
    </div>
    <table class="table table-striped border">
        <thead>
		    <tr>
		        <th scope="col">First Name</th>
		        <th scope="col">Last Name</th>
		        <th scope="col">Age</th>
		    </tr>
	    </thead>
		<tbody>
		    <c:forEach items="${dojo.ninjas}" var="ninja">
			<tr>
			    <td>${ninja.firstName}</td>
			    <td>${ninja.lastName}</td>
			    <td>${ninja.age}</td>
			</tr>	    	
		    </c:forEach>   		
		</tbody>
    </table>
</body>
</html>