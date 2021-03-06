<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-minicurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-minicurso" class="content scaffold-create" role="main">
			
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${minicursoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${minicursoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<g:form url="[resource:minicursoInstance, action:'save']" >
				%{--<f:all bean="minicursoInstance"/>--}%
				<fieldset class="form">
				<f:with bean="minicursoInstance">
						<f:field property="nome"/>
						<f:field property="cargaHoraria"/>
						<f:field property="dataIncio"/>
						<f:field property="dataFim"/>
						<f:field property="vagas"/>
						</f:with>
				</fieldset>
				%{--<fieldset class="form">--}%
					%{--<g:render template="form"/>--}%
				<fieldset>
				<button class="btn btn-success" type="submit"><i class="fa fa-android"> </i>${message(code: 'default.button.create.label', default: 'Create')}</button>
				</fieldset>
				%{--<fieldset class="btn btn-success">--}%
					%{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
				%{--</fieldset>--}%

			</g:form>
		</div>
	</body>
</html>
