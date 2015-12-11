
<%@ page import="com.uruboo.TaskFieldUpdateLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taskFieldUpdateLog.label', default: 'TaskFieldUpdateLog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-taskFieldUpdateLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-taskFieldUpdateLog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="field" title="${message(code: 'taskFieldUpdateLog.field.label', default: 'Field')}" />
					
						<g:sortableColumn property="oldValue" title="${message(code: 'taskFieldUpdateLog.oldValue.label', default: 'Old Value')}" />
					
						<g:sortableColumn property="newValue" title="${message(code: 'taskFieldUpdateLog.newValue.label', default: 'New Value')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'taskFieldUpdateLog.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="taskFieldUpdateLog.task.label" default="Task" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskFieldUpdateLogInstanceList}" status="i" var="taskFieldUpdateLogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskFieldUpdateLogInstance.id}">${fieldValue(bean: taskFieldUpdateLogInstance, field: "field")}</g:link></td>
					
						<td>${fieldValue(bean: taskFieldUpdateLogInstance, field: "oldValue")}</td>
					
						<td>${fieldValue(bean: taskFieldUpdateLogInstance, field: "newValue")}</td>
					
						<td><g:formatDate date="${taskFieldUpdateLogInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: taskFieldUpdateLogInstance, field: "task")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskFieldUpdateLogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
