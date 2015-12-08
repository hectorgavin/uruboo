<%@ page import="com.uruboo.Assistant" %>



<div class="fieldcontain ${hasErrors(bean: assistantInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="assistant.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${assistantInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assistantInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="assistant.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${assistantInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assistantInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="assistant.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${assistantInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assistantInstance, field: 'customers', 'error')} ">
	<label for="customers">
		<g:message code="assistant.customers.label" default="Customers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${assistantInstance?.customers?}" var="c">
    <li><g:link controller="customer" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="customer" action="create" params="['assistant.id': assistantInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'customer.label', default: 'Customer')])}</g:link>
</li>
</ul>


</div>

