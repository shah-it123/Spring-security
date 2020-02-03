<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>Spring 3 hibernate integration example </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <h3 align="center"><a href="/Spring3Hibernate?lang=en">English</a> | <a href="/Spring3Hibernate?lang=fr">French</a></h3>
    <h2>Employee Management Screen</h2>
 	<h6><a href="<c:url value='j_spring_security_logout'/>">Click here to logout</a></h6>
    <form:form method="post" action="add" commandName="employee">
        <table>
        <tr>
            <td><form:label path="firstname"><spring:message code="label.firstname"/></form:label></td>
            <td><form:input path="firstname" /></td>
        </tr>
        <tr>
            <td><form:label path="lastname"><spring:message code="label.lastname"/></form:label></td>
            <td><form:input path="lastname" /></td>
        </tr>
        <tr>
            <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td><form:label path="telephone"><spring:message code="label.telephone"/></form:label></td>
            <td><form:input path="telephone" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="label.add"/>"/>
            </td>
        </tr>
    </table> 
    </form:form>
    <h3><spring:message code="label.employees"/></h3>
    <c:if  test="${!empty employeeList}">
    <table class="data">
    <tr>
        <th><spring:message code="label.name"/></th>
        <th>Email</th>
        <th><spring:message code="label.telephone"/></th>
        <th>Action</th>
    </tr>
    <c:forEach items="${employeeList}" var="emp">
        <tr>
            <td>${emp.lastname}, ${emp.firstname} </td>
            <td>${emp.email}</td>
            <td>${emp.telephone}</td>
            <td><a href="${pageContext.request.contextPath}/delete/${emp.id}">delete</a></td>
        </tr>
    </c:forEach>
    </table>
    </c:if>
    </body>
</html>