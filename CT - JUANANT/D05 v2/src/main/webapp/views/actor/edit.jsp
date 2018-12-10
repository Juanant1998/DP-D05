<%--
 * applications.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<%--<p><spring:message code="welcome.greeting.prefix" /> ${name}<spring:message code="welcome.greeting.suffix" /></p>

<p><spring:message code="welcome.greeting.current.time" /> ${moment}</p> 
--%>
<head></head>
<body>

	<div>
		<tiles:insertAttribute name="header" />
	</div>
	<div>
		<h1>
			<tiles:insertAttribute name="title" />
		</h1>
		<tiles:insertAttribute name="body" />	
		<jstl:if test="${message != null}">
			<br />
			<span class="message"><spring:message code="${message}" /></span>
		</jstl:if>	
	</div>
	
	<form:form action="actor/edit.do" modelAttribute="actor">
		<form:hidden path="id" />
		<form:hidden path="version" />
		<form:hidden path="messageBoxes" />
		<form:hidden path="userAccount.authorities" />
	
		<security:authorize access="hasRole()">
		<form:label path="name">
			<spring:message code="actor.name" />
		</form:label>
		<form:input path="name" />
		<form:errors cssClass="error" path="name" />
		<br />
		
		<form:label path="middleName">
			<spring:message code="actor.middleName" />
		</form:label>
		<form:input path="middleName" />
		<form:errors cssClass="error" path="middleName" />
		<br />
		
		<form:label path="surname">
			<spring:message code="actor.surname" />
		</form:label>
		<form:input path="surname" />
		<form:errors cssClass="error" path="surname" />
		<br />
		
		<form:label path="photo">
			<spring:message code="actor.photo" />
		</form:label>
		<form:input path="photo" />
		<form:errors cssClass="error" path="photo" />
		<br />
		
		<form:label path="email">
			<spring:message code="actor.email" />
		</form:label>
		<form:input path="email" />
		<form:errors cssClass="error" path="email" />
		<br />
		
		<form:label path="phone">
			<spring:message code="actor.phone" />
		</form:label>
		<form:input path="phone" />
		<form:errors cssClass="error" path="phone" />
		<br />
		
		<form:label path="address">
			<spring:message code="actor.address" />
		</form:label>
		<form:input path="address" />
		<form:errors cssClass="error" path="address" />
		<br />
		
		<form:label path="profiles">
			<spring:message code="actor.profiles" />
		</form:label>
		<form:textarea path="profiles" placeholder="Enter social profiles separated with ','"/>
		<form:errors cssClass="error" path="profiles" />
		<br />
		
		</security:authorize>
	
	<input type="submit" name="save" value="<spring:message code="actor.save" />" />
	
	
	
	<input type="button" name="cancel" value="<spring:message code="actor.cancel" />" />

<!-- Lo de abajo no está bien, hay que hacerlo viendo que el id != 0 -->
	
		<security:authorize access="hasRole('HANDYWORKER')"> <!-- aqui habria que buscar la forma de meter todos los roles -->
				<input type="button" name="delete" value="<spring:message code="actor.delete" />" />
		</security:authorize>
	
	</form:form>
	
	<div>
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>
