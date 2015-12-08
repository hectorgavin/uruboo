<%@ page import="com.uruboo.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'sender', 'error')} required">
	<label for="sender">
		<g:message code="comment.sender.label" default="Sender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sender" name="sender.id" from="${com.uruboo.User.list()}" optionKey="id" required="" value="${commentInstance?.sender?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'receiver', 'error')} required">
	<label for="receiver">
		<g:message code="comment.receiver.label" default="Receiver" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="receiver" name="receiver.id" from="${com.uruboo.User.list()}" optionKey="id" required="" value="${commentInstance?.receiver?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="comment.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" cols="40" rows="5" required="" value="${commentInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="comment.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${com.uruboo.Task.list()}" optionKey="id" required="" value="${commentInstance?.task?.id}" class="many-to-one"/>

</div>

