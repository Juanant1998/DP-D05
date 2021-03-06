
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


	<form:form action="tutorial/handyworker/edit.do" modelAttribute="tutorial">
		<form:hidden path="id"/>
		<form:hidden path="version"/>
		<form:hidden path="lastUpdate"/>
		<form:hidden path="sections"/>
		<form:hidden path="handyworker"/>
		
		<form:label path="title">
			<spring:message code="tutorial.title" />:
		</form:label>
		<form:input path="title" />
		<form:errors cssClass="error" path="title" />
		<br />
		
		<form:label path="summary">
			<spring:message code="tutorial.summary" />:
		</form:label>
		<form:textarea path="summary" />
		<form:errors cssClass="error" path="summary" />
		<br />		
		
		<form:label path="picture">
			<spring:message code="tutorial.picture" />:
		</form:label>
		<form:textarea path="picture" />
		<form:errors cssClass="error" path="picture" />
		<br />	
		
		<input type="submit" name = "save" value = "<spring:message code ="tutorial.save" /> " />
		<spring:message code ="tutorial.cancel" var="cancel" />
		<input type="button" name="cancel" value="${cancel}" onclick="javascript:relativeRedir('tutorial/handyworker/list.do?handyworkerId=${handyworkerId}');" />
	
	
	
	</form:form>
	
	