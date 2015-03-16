
<%@ page import="elige.tu.carrera.Selector" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'selector.label', default: 'Selector')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-selector" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-selector" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="animales" title="${message(code: 'selector.animales.label', default: 'Animales')}" />
					
						<g:sortableColumn property="biologia" title="${message(code: 'selector.biologia.label', default: 'Biologia')}" />
					
						<g:sortableColumn property="bricolaje" title="${message(code: 'selector.bricolaje.label', default: 'Bricolaje')}" />
					
						<g:sortableColumn property="calculo" title="${message(code: 'selector.calculo.label', default: 'Calculo')}" />
					
						<g:sortableColumn property="ciencia" title="${message(code: 'selector.ciencia.label', default: 'Ciencia')}" />
					
						<g:sortableColumn property="creatividad" title="${message(code: 'selector.creatividad.label', default: 'Creatividad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${selectorInstanceList}" status="i" var="selectorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${selectorInstance.id}">${fieldValue(bean: selectorInstance, field: "animales")}</g:link></td>
					
						<td><g:formatBoolean boolean="${selectorInstance.biologia}" /></td>
					
						<td><g:formatBoolean boolean="${selectorInstance.bricolaje}" /></td>
					
						<td><g:formatBoolean boolean="${selectorInstance.calculo}" /></td>
					
						<td><g:formatBoolean boolean="${selectorInstance.ciencia}" /></td>
					
						<td><g:formatBoolean boolean="${selectorInstance.creatividad}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${selectorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
