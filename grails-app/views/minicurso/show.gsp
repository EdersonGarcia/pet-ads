
<%@ page import="minicurso.Minicurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-minicurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-minicurso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list minicurso">
			
				<g:if test="${minicursoInstance?.cargaHoraria}">
				<li class="fieldcontain">
					<span id="cargaHoraria-label" class="property-label"><g:message code="minicurso.cargaHoraria.label" default="Carga Horaria" /></span>
					
						<span class="property-value" aria-labelledby="cargaHoraria-label"><g:fieldValue bean="${minicursoInstance}" field="cargaHoraria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.dataFim}">
				<li class="fieldcontain">
					<span id="dataFim-label" class="property-label"><g:message code="minicurso.dataFim.label" default="Data Fim" /></span>
					
						<span class="property-value" aria-labelledby="dataFim-label"><g:formatDate date="${minicursoInstance?.dataFim}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.dataIncio}">
				<li class="fieldcontain">
					<span id="dataIncio-label" class="property-label"><g:message code="minicurso.dataIncio.label" default="Data Incio" /></span>
					
						<span class="property-value" aria-labelledby="dataIncio-label"><g:formatDate date="${minicursoInstance?.dataIncio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="minicurso.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${minicursoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.inscricoes}">
				<li class="fieldcontain">
					<span id="inscricoes-label" class="property-label"><g:message code="minicurso.inscricoes.label" default="Inscricoes" /></span>
					
						<g:each in="${minicursoInstance.inscricoes}" var="i">
						<span class="property-value" aria-labelledby="inscricoes-label"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="minicurso.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${minicursoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="minicurso.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${minicursoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.vagas}">
				<li class="fieldcontain">
					<span id="vagas-label" class="property-label"><g:message code="minicurso.vagas.label" default="Vagas" /></span>
					
						<span class="property-value" aria-labelledby="vagas-label"><g:fieldValue bean="${minicursoInstance}" field="vagas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:minicursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${minicursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
