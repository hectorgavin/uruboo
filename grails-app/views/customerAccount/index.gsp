
<%@ page import="com.uruboo.CustomerAccount" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerAccount.label', default: 'CustomerAccount')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customerAccount" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customerAccount" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="host" title="${message(code: 'customerAccount.host.label', default: 'Host')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'customerAccount.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'customerAccount.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'customerAccount.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'customerAccount.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerAccountInstanceList}" status="i" var="customerAccountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerAccountInstance.id}">${fieldValue(bean: customerAccountInstance, field: "host")}</g:link></td>
					
						<td>${fieldValue(bean: customerAccountInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: customerAccountInstance, field: "password")}</td>
					
						<td><g:formatDate date="${customerAccountInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${customerAccountInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerAccountInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
