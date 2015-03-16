
<%@ page import="elige.tu.carrera.Selector" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'selector.label', default: 'Selector')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-selector" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-selector" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list selector">
			
				<g:if test="${selectorInstance?.animales}">
				<li class="fieldcontain">
					<span id="animales-label" class="property-label"><g:message code="selector.animales.label" default="Animales" /></span>
					
						<span class="property-value" aria-labelledby="animales-label"><g:formatBoolean boolean="${selectorInstance?.animales}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.biologia}">
				<li class="fieldcontain">
					<span id="biologia-label" class="property-label"><g:message code="selector.biologia.label" default="Biologia" /></span>
					
						<span class="property-value" aria-labelledby="biologia-label"><g:formatBoolean boolean="${selectorInstance?.biologia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.bricolaje}">
				<li class="fieldcontain">
					<span id="bricolaje-label" class="property-label"><g:message code="selector.bricolaje.label" default="Bricolaje" /></span>
					
						<span class="property-value" aria-labelledby="bricolaje-label"><g:formatBoolean boolean="${selectorInstance?.bricolaje}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.calculo}">
				<li class="fieldcontain">
					<span id="calculo-label" class="property-label"><g:message code="selector.calculo.label" default="Calculo" /></span>
					
						<span class="property-value" aria-labelledby="calculo-label"><g:formatBoolean boolean="${selectorInstance?.calculo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.ciencia}">
				<li class="fieldcontain">
					<span id="ciencia-label" class="property-label"><g:message code="selector.ciencia.label" default="Ciencia" /></span>
					
						<span class="property-value" aria-labelledby="ciencia-label"><g:formatBoolean boolean="${selectorInstance?.ciencia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.creatividad}">
				<li class="fieldcontain">
					<span id="creatividad-label" class="property-label"><g:message code="selector.creatividad.label" default="Creatividad" /></span>
					
						<span class="property-value" aria-labelledby="creatividad-label"><g:formatBoolean boolean="${selectorInstance?.creatividad}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.deportes}">
				<li class="fieldcontain">
					<span id="deportes-label" class="property-label"><g:message code="selector.deportes.label" default="Deportes" /></span>
					
						<span class="property-value" aria-labelledby="deportes-label"><g:formatBoolean boolean="${selectorInstance?.deportes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.donDeGentes}">
				<li class="fieldcontain">
					<span id="donDeGentes-label" class="property-label"><g:message code="selector.donDeGentes.label" default="Don De Gentes" /></span>
					
						<span class="property-value" aria-labelledby="donDeGentes-label"><g:formatBoolean boolean="${selectorInstance?.donDeGentes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.economia}">
				<li class="fieldcontain">
					<span id="economia-label" class="property-label"><g:message code="selector.economia.label" default="Economia" /></span>
					
						<span class="property-value" aria-labelledby="economia-label"><g:formatBoolean boolean="${selectorInstance?.economia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.ejercicio}">
				<li class="fieldcontain">
					<span id="ejercicio-label" class="property-label"><g:message code="selector.ejercicio.label" default="Ejercicio" /></span>
					
						<span class="property-value" aria-labelledby="ejercicio-label"><g:formatBoolean boolean="${selectorInstance?.ejercicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.gastronomia}">
				<li class="fieldcontain">
					<span id="gastronomia-label" class="property-label"><g:message code="selector.gastronomia.label" default="Gastronomia" /></span>
					
						<span class="property-value" aria-labelledby="gastronomia-label"><g:formatBoolean boolean="${selectorInstance?.gastronomia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.historia}">
				<li class="fieldcontain">
					<span id="historia-label" class="property-label"><g:message code="selector.historia.label" default="Historia" /></span>
					
						<span class="property-value" aria-labelledby="historia-label"><g:formatBoolean boolean="${selectorInstance?.historia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.internet}">
				<li class="fieldcontain">
					<span id="internet-label" class="property-label"><g:message code="selector.internet.label" default="Internet" /></span>
					
						<span class="property-value" aria-labelledby="internet-label"><g:formatBoolean boolean="${selectorInstance?.internet}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.lectura}">
				<li class="fieldcontain">
					<span id="lectura-label" class="property-label"><g:message code="selector.lectura.label" default="Lectura" /></span>
					
						<span class="property-value" aria-labelledby="lectura-label"><g:formatBoolean boolean="${selectorInstance?.lectura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.lenguajes}">
				<li class="fieldcontain">
					<span id="lenguajes-label" class="property-label"><g:message code="selector.lenguajes.label" default="Lenguajes" /></span>
					
						<span class="property-value" aria-labelledby="lenguajes-label"><g:formatBoolean boolean="${selectorInstance?.lenguajes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.liderazgo}">
				<li class="fieldcontain">
					<span id="liderazgo-label" class="property-label"><g:message code="selector.liderazgo.label" default="Liderazgo" /></span>
					
						<span class="property-value" aria-labelledby="liderazgo-label"><g:formatBoolean boolean="${selectorInstance?.liderazgo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.manualidades}">
				<li class="fieldcontain">
					<span id="manualidades-label" class="property-label"><g:message code="selector.manualidades.label" default="Manualidades" /></span>
					
						<span class="property-value" aria-labelledby="manualidades-label"><g:formatBoolean boolean="${selectorInstance?.manualidades}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.musica}">
				<li class="fieldcontain">
					<span id="musica-label" class="property-label"><g:message code="selector.musica.label" default="Musica" /></span>
					
						<span class="property-value" aria-labelledby="musica-label"><g:formatBoolean boolean="${selectorInstance?.musica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.peliculas}">
				<li class="fieldcontain">
					<span id="peliculas-label" class="property-label"><g:message code="selector.peliculas.label" default="Peliculas" /></span>
					
						<span class="property-value" aria-labelledby="peliculas-label"><g:formatBoolean boolean="${selectorInstance?.peliculas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.politica}">
				<li class="fieldcontain">
					<span id="politica-label" class="property-label"><g:message code="selector.politica.label" default="Politica" /></span>
					
						<span class="property-value" aria-labelledby="politica-label"><g:formatBoolean boolean="${selectorInstance?.politica}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.puzzles}">
				<li class="fieldcontain">
					<span id="puzzles-label" class="property-label"><g:message code="selector.puzzles.label" default="Puzzles" /></span>
					
						<span class="property-value" aria-labelledby="puzzles-label"><g:formatBoolean boolean="${selectorInstance?.puzzles}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.redaccion}">
				<li class="fieldcontain">
					<span id="redaccion-label" class="property-label"><g:message code="selector.redaccion.label" default="Redaccion" /></span>
					
						<span class="property-value" aria-labelledby="redaccion-label"><g:formatBoolean boolean="${selectorInstance?.redaccion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.tecnologia}">
				<li class="fieldcontain">
					<span id="tecnologia-label" class="property-label"><g:message code="selector.tecnologia.label" default="Tecnologia" /></span>
					
						<span class="property-value" aria-labelledby="tecnologia-label"><g:formatBoolean boolean="${selectorInstance?.tecnologia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.viajar}">
				<li class="fieldcontain">
					<span id="viajar-label" class="property-label"><g:message code="selector.viajar.label" default="Viajar" /></span>
					
						<span class="property-value" aria-labelledby="viajar-label"><g:formatBoolean boolean="${selectorInstance?.viajar}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${selectorInstance?.videojuegos}">
				<li class="fieldcontain">
					<span id="videojuegos-label" class="property-label"><g:message code="selector.videojuegos.label" default="Videojuegos" /></span>
					
						<span class="property-value" aria-labelledby="videojuegos-label"><g:formatBoolean boolean="${selectorInstance?.videojuegos}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:selectorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${selectorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
