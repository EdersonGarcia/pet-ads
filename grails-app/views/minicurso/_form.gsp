<%@ page import="minicurso.Minicurso" %>



<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'cargaHoraria', 'error')} required">
	<label for="cargaHoraria">
		<g:message code="minicurso.cargaHoraria.label" default="Carga Horaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargaHoraria" value="${fieldValue(bean: minicursoInstance, field: 'cargaHoraria')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'dataFim', 'error')} required">
	<label for="dataFim">
		<g:message code="minicurso.dataFim.label" default="Data Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataFim" precision="day"  value="${minicursoInstance?.dataFim}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'dataIncio', 'error')} required">
	<label for="dataIncio">
		<g:message code="minicurso.dataIncio.label" default="Data Incio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataIncio" precision="day"  value="${minicursoInstance?.dataIncio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'inscricoes', 'error')} ">
	<label for="inscricoes">
		<g:message code="minicurso.inscricoes.label" default="Inscricoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${minicursoInstance?.inscricoes?}" var="i">
    <li><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscricao" action="create" params="['minicurso.id': minicursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscricao.label', default: 'Inscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="minicurso.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${minicursoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'vagas', 'error')} required">
	<label for="vagas">
		<g:message code="minicurso.vagas.label" default="Vagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="vagas" type="number" value="${minicursoInstance.vagas}" required=""/>

</div>

