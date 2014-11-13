<%@ page import="minicurso.Inscricao" %>



<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'minicurso', 'error')} required">
	<label for="minicurso">
		<g:message code="inscricao.minicurso.label" default="Minicurso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="minicurso" name="minicurso.id" from="${minicurso.Minicurso.list()}" optionKey="id" required="" value="${inscricaoInstance?.minicurso?.id}" class="many-to-one"/>

</div>

