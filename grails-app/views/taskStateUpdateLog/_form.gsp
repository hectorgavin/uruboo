<%@ page import="com.uruboo.TaskStateUpdateLog" %>



<div class="fieldcontain ${hasErrors(bean: taskStateUpdateLogInstance, field: 'oldState', 'error')} required">
	<label for="oldState">
		<g:message code="taskStateUpdateLog.oldState.label" default="Old State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="oldState" from="${com.uruboo.enums.TaskState?.values()}" keys="${com.uruboo.enums.TaskState.values()*.name()}" required="" value="${taskStateUpdateLogInstance?.oldState?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: taskStateUpdateLogInstance, field: 'newState', 'error')} required">
	<label for="newState">
		<g:message code="taskStateUpdateLog.newState.label" default="New State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="newState" from="${com.uruboo.enums.TaskState?.values()}" keys="${com.uruboo.enums.TaskState.values()*.name()}" required="" value="${taskStateUpdateLogInstance?.newState?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: taskStateUpdateLogInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="taskStateUpdateLog.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${com.uruboo.Task.list()}" optionKey="id" required="" value="${taskStateUpdateLogInstance?.task?.id}" class="many-to-one"/>

</div>

