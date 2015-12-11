<%@ page import="com.uruboo.TaskUpdateLog" %>



<div class="fieldcontain ${hasErrors(bean: taskUpdateLogInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="taskUpdateLog.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${com.uruboo.Task.list()}" optionKey="id" required="" value="${taskUpdateLogInstance?.task?.id}" class="many-to-one"/>

</div>

