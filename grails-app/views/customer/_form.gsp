<%@ page import="com.uruboo.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="customer.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${customerInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${customerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'assistant', 'error')} ">
	<label for="assistant">
		<g:message code="customer.assistant.label" default="Assistant" />
		
	</label>
	<g:select id="assistant" name="assistant.id" from="${com.uruboo.Assistant.list()}" optionKey="id" value="${customerInstance?.assistant?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="customer.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

