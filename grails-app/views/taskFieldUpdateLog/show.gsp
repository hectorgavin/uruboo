
<%@ page import="com.uruboo.TaskFieldUpdateLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'taskFieldUpdateLog.label', default: 'TaskFieldUpdateLog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-taskFieldUpdateLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-taskFieldUpdateLog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list taskFieldUpdateLog">
			
				<g:if test="${taskFieldUpdateLogInstance?.field}">
				<li class="fieldcontain">
					<span id="field-label" class="property-label"><g:message code="taskFieldUpdateLog.field.label" default="Field" /></span>
					
						<span class="property-value" aria-labelledby="field-label"><g:fieldValue bean="${taskFieldUpdateLogInstance}" field="field"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskFieldUpdateLogInstance?.oldValue}">
				<li class="fieldcontain">
					<span id="oldValue-label" class="property-label"><g:message code="taskFieldUpdateLog.oldValue.label" default="Old Value" /></span>
					
						<span class="property-value" aria-labelledby="oldValue-label"><g:fieldValue bean="${taskFieldUpdateLogInstance}" field="oldValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskFieldUpdateLogInstance?.newValue}">
				<li class="fieldcontain">
					<span id="newValue-label" class="property-label"><g:message code="taskFieldUpdateLog.newValue.label" default="New Value" /></span>
					
						<span class="property-value" aria-labelledby="newValue-label"><g:fieldValue bean="${taskFieldUpdateLogInstance}" field="newValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskFieldUpdateLogInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="taskFieldUpdateLog.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${taskFieldUpdateLogInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskFieldUpdateLogInstance?.task}">
				<li class="fieldcontain">
					<span id="task-label" class="property-label"><g:message code="taskFieldUpdateLog.task.label" default="Task" /></span>
					
						<span class="property-value" aria-labelledby="task-label"><g:link controller="task" action="show" id="${taskFieldUpdateLogInstance?.task?.id}">${taskFieldUpdateLogInstance?.task?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taskFieldUpdateLogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taskFieldUpdateLogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
