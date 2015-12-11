<%@ page import="com.uruboo.TaskFieldUpdateLog" %>



<div class="fieldcontain ${hasErrors(bean: taskFieldUpdateLogInstance, field: 'field', 'error')} required">
	<label for="field">
		<g:message code="taskFieldUpdateLog.field.label" default="Field" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="field" required="" value="${taskFieldUpdateLogInstance?.field}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskFieldUpdateLogInstance, field: 'oldValue', 'error')} ">
	<label for="oldValue">
		<g:message code="taskFieldUpdateLog.oldValue.label" default="Old Value" />
		
	</label>
	<g:textField name="oldValue" value="${taskFieldUpdateLogInstance?.oldValue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskFieldUpdateLogInstance, field: 'newValue', 'error')} ">
	<label for="newValue">
		<g:message code="taskFieldUpdateLog.newValue.label" default="New Value" />
		
	</label>
	<g:textField name="newValue" value="${taskFieldUpdateLogInstance?.newValue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskFieldUpdateLogInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="taskFieldUpdateLog.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${com.uruboo.Task.list()}" optionKey="id" required="" value="${taskFieldUpdateLogInstance?.task?.id}" class="many-to-one"/>

</div>

