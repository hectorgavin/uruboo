<%@ page import="com.uruboo.CustomerAccount" %>



<div class="fieldcontain ${hasErrors(bean: customerAccountInstance, field: 'host', 'error')} required">
	<label for="host">
		<g:message code="customerAccount.host.label" default="Host" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="host" required="" value="${customerAccountInstance?.host}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerAccountInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="customerAccount.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${customerAccountInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerAccountInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="customerAccount.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${customerAccountInstance?.password}"/>

</div>

