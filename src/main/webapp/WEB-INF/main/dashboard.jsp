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
<title>Dojos and Ninjas</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-4 mb-5 text-center">Dashboard</h1>
        <div class="d-flex justify-content-around">
            <a href="/dojos/create">Add Dojo</a>
            <a href="/ninjas/create">Add Ninja</a>
        </div>
    </div>
    <h1 class="mt-4 text-center">All Dojos</h1>
	<table class="table container">
	    <thead>
	        <tr>
	            <th scope="col">Id</th>
	            <th scope="col">Dojo</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${allDojos}" var="dojo">
	        <tr>
		        <td>${dojo.id}</td>
			    <td><a href="/dojos/${dojo.id}">${dojo.dojoName}</a></td>
	        </tr>
		    </c:forEach>
	    </tbody>
	</table>
</body>
</html>