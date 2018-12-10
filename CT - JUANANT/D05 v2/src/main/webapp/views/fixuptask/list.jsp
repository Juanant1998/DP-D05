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

<head>

<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="shortcut icon" href="/favicon.ico"/> 

<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript" src="scripts/jquery-ui.js"></script>
<script type="text/javascript" src="scripts/jmenu.js"></script>

<link rel="stylesheet" href="styles/common.css" type="text/css">
<link rel="stylesheet" href="styles/jmenu.css" media="screen" type="text/css" />
<link rel="stylesheet" href="styles/displaytag.css" type="text/css">

<title><tiles:insertAttribute name="title" ignore="true" /></title>

</head>

<body>

	<div>
		<tiles:insertAttribute name="header" />
	</div>
	
	
	<display:table pagesize = "5" class="displaytag" name="fixuptasks" requestURI="${requestURI}" id="row">
	
	<!-- ATTRIBUTES -->
	
	<spring:message code="fixuptask.moment" var= "momentHeader" />
	<display:column property="moment" title="${momentHeader}" sortable="false" format="{0,date,dd/MM/yyyy HH:mm}" />
	 
	<spring:message code="fixuptask.description" var= "descriptionHeader" />
	<display:column property="description" title = "${descriptionHeader}" sortable=false/>

	<spring:message code="fixuptask.address" var= "addressHeader" />
	<display:column property="address" title = "${addressHeader}" sortable=false/>

	<spring:message code="fixuptask.maximumPrice" var= "maximumPriceHeader" />
	<display:column property="maximumPrice" title = "${maximumPriceHeader}" sortable=false/>
	
	<spring:message code="fixuptask.startDate" var= "startDateHeader" />
	<display:column property="startDate" title = "${startDateHeader}" sortable=false/>
	
	<spring:message code="fixuptask.endDate" var= "endDateHeader" />
	<display:column property="endDate" title = "${endDateHeader}" sortable=false/>
	
	<spring:message code="fixuptask.warranty" var= "warrantyHeader" />
	<display:column property="warranty" title = "${warrantyHeader}" sortable=false/>	
	
	<spring:message code="fixuptask.category" var= "categoryHeader" />
	<display:column property="category" title = "${categoryHeader}" sortable=false/>	
	
	<security:authorize access="hasRole('HANDYWORKER')">
		<display:column>
			<a href="application/create.do?futId=${row.id}">
			<spring:message code="fixuptask.createApplication"/>
			</a>
		</display:column>
	</security:authorize>
	
	<security:authorize access="hasRole('CUSTOMER')">
		<display:column>
			<a href="fixuptask/edit.do?futId=${row.id}">
			<spring:message code="fixuptask.editFUT"/>
			</a>
		</display:column>
	</security:authorize>
	
</display:table>
	
</body>
</html>
