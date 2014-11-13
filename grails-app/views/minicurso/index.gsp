
<%@ page import="minicurso.Minicurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-minicurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-minicurso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cargaHoraria" title="${message(code: 'minicurso.cargaHoraria.label', default: 'Carga Horaria')}" />
					
						<g:sortableColumn property="dataFim" title="${message(code: 'minicurso.dataFim.label', default: 'Data Fim')}" />
					
						<g:sortableColumn property="dataIncio" title="${message(code: 'minicurso.dataIncio.label', default: 'Data Incio')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'minicurso.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'minicurso.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'minicurso.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${minicursoInstanceList}" status="i" var="minicursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${minicursoInstance.id}">${fieldValue(bean: minicursoInstance, field: "cargaHoraria")}</g:link></td>
					
						<td><g:formatDate date="${minicursoInstance.dataFim}" /></td>
					
						<td><g:formatDate date="${minicursoInstance.dataIncio}" /></td>
					
						<td><g:formatDate date="${minicursoInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${minicursoInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: minicursoInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${minicursoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
