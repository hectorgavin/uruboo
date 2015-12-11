
<%@ page import="com.uruboo.Assistant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assistant.label', default: 'Assistant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-assistant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-assistant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'assistant.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'assistant.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'assistant.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'assistant.notes.label', default: 'Notes')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'assistant.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'assistant.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${assistantInstanceList}" status="i" var="assistantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${assistantInstance.id}">${fieldValue(bean: assistantInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: assistantInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: assistantInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: assistantInstance, field: "notes")}</td>
					
						<td><g:formatDate date="${assistantInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${assistantInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assistantInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
