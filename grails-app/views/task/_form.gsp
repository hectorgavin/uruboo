<%@ page import="com.uruboo.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="task.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${taskInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" value="${taskInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="task.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${com.uruboo.enums.TaskState?.values()}" keys="${com.uruboo.enums.TaskState.values()*.name()}" required="" value="${taskInstance?.state?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'finished', 'error')} ">
	<label for="finished">
		<g:message code="task.finished.label" default="Finished" />
		
	</label>
	<g:datePicker name="finished" precision="day"  value="${taskInstance?.finished}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="task.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${com.uruboo.Customer.list()}" optionKey="id" required="" value="${taskInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="task.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${taskInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['task.id': taskInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'updates', 'error')} ">
	<label for="updates">
		<g:message code="task.updates.label" default="Updates" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${taskInstance?.updates?}" var="u">
    <li><g:link controller="taskUpdateLog" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="taskUpdateLog" action="create" params="['task.id': taskInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'taskUpdateLog.label', default: 'TaskUpdateLog')])}</g:link>
</li>
</ul>


</div>

