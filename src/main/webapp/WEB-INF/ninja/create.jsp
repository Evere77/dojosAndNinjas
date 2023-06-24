<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-4">New Ninja</h1>
        <form:form action="/ninjas/process/create" modelAttribute="ninja" method="post">
            <div>
                <div class="d-flex">
                <p>Dojo:</p>
                <form:select path="dojo">
                    <c:forEach var="dojo" items="${allDojos}">
                        <form:option value="${dojo.id}"><c:out value="${dojo.dojoName}"/></form:option>
                    </c:forEach>
                </form:select>
                </div>
                <br>
                <form:label path="firstName">First Name:</form:label>
                <form:input type="text" path="firstName"/>
                <form:errors class="text-danger" path="firstName"/>
                <br>
            </div>
            <div>
                <form:label path="lastName">Last Name:</form:label>
                <form:input type="text" path="lastName"/>
                <form:errors class="text-danger" path="lastName"/>
                <br>
            </div>
            <div>
                <form:label path="age">Age:</form:label>
                <form:input type="text" path="age"/>
                <form:errors class="text-danger" path="age"/>
                <br>
            </div>
            <input type="submit" value="Create" class="mt-4 btn btn-primary"/>
        </form:form>
    </div>
</body>
</html>