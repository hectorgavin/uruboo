
<%@ page import="com.uruboo.TaskStateUpdateLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taskStateUpdateLog.label', default: 'TaskStateUpdateLog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-taskStateUpdateLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-taskStateUpdateLog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list taskStateUpdateLog">
			
				<g:if test="${taskStateUpdateLogInstance?.oldState}">
				<li class="fieldcontain">
					<span id="oldState-label" class="property-label"><g:message code="taskStateUpdateLog.oldState.label" default="Old State" /></span>
					
						<span class="property-value" aria-labelledby="oldState-label"><g:fieldValue bean="${taskStateUpdateLogInstance}" field="oldState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskStateUpdateLogInstance?.newState}">
				<li class="fieldcontain">
					<span id="newState-label" class="property-label"><g:message code="taskStateUpdateLog.newState.label" default="New State" /></span>
					
						<span class="property-value" aria-labelledby="newState-label"><g:fieldValue bean="${taskStateUpdateLogInstance}" field="newState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskStateUpdateLogInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="taskStateUpdateLog.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${taskStateUpdateLogInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskStateUpdateLogInstance?.task}">
				<li class="fieldcontain">
					<span id="task-label" class="property-label"><g:message code="taskStateUpdateLog.task.label" default="Task" /></span>
					
						<span class="property-value" aria-labelledby="task-label"><g:link controller="task" action="show" id="${taskStateUpdateLogInstance?.task?.id}">${taskStateUpdateLogInstance?.task?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taskStateUpdateLogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taskStateUpdateLogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
