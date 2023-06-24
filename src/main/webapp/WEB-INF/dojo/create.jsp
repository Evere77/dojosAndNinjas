<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="ISO-8859-1">
<title>New Dojo</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-4 mb-3">New Dojo</h1>
        <form:form action="/dojos/process/create" modelAttribute="dojo" method="post">
            <div>
                <form:label path="dojoName">Name: </form:label>
                <form:input type="text" path="dojoName"/>
                <br>
                <form:errors class="text-danger" path="dojoName"/>
            </div>
            <input type="submit" value="Create" class="mt-4 btn btn-primary"/>
        </form:form>
    </div>
</body>
</html>