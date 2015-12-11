
<%@ page import="com.uruboo.TaskStateUpdateLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taskStateUpdateLog.label', default: 'TaskStateUpdateLog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-taskStateUpdateLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-taskStateUpdateLog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="oldState" title="${message(code: 'taskStateUpdateLog.oldState.label', default: 'Old State')}" />
					
						<g:sortableColumn property="newState" title="${message(code: 'taskStateUpdateLog.newState.label', default: 'New State')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'taskStateUpdateLog.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="taskStateUpdateLog.task.label" default="Task" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskStateUpdateLogInstanceList}" status="i" var="taskStateUpdateLogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskStateUpdateLogInstance.id}">${fieldValue(bean: taskStateUpdateLogInstance, field: "oldState")}</g:link></td>
					
						<td>${fieldValue(bean: taskStateUpdateLogInstance, field: "newState")}</td>
					
						<td><g:formatDate date="${taskStateUpdateLogInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: taskStateUpdateLogInstance, field: "task")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskStateUpdateLogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
