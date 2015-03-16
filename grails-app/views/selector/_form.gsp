<%@ page import="elige.tu.carrera.Selector" %>



<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'animales', 'error')} ">
	<label for="animales">
		<g:message code="selector.animales.label" default="Animales" />
		
	</label>
	<g:checkBox name="animales" value="${selectorInstance?.animales}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'biologia', 'error')} ">
	<label for="biologia">
		<g:message code="selector.biologia.label" default="Biologia" />
		
	</label>
	<g:checkBox name="biologia" value="${selectorInstance?.biologia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'bricolaje', 'error')} ">
	<label for="bricolaje">
		<g:message code="selector.bricolaje.label" default="Bricolaje" />
		
	</label>
	<g:checkBox name="bricolaje" value="${selectorInstance?.bricolaje}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'calculo', 'error')} ">
	<label for="calculo">
		<g:message code="selector.calculo.label" default="Calculo" />
		
	</label>
	<g:checkBox name="calculo" value="${selectorInstance?.calculo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'ciencia', 'error')} ">
	<label for="ciencia">
		<g:message code="selector.ciencia.label" default="Ciencia" />
		
	</label>
	<g:checkBox name="ciencia" value="${selectorInstance?.ciencia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'creatividad', 'error')} ">
	<label for="creatividad">
		<g:message code="selector.creatividad.label" default="Creatividad" />
		
	</label>
	<g:checkBox name="creatividad" value="${selectorInstance?.creatividad}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'deportes', 'error')} ">
	<label for="deportes">
		<g:message code="selector.deportes.label" default="Deportes" />
		
	</label>
	<g:checkBox name="deportes" value="${selectorInstance?.deportes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'donDeGentes', 'error')} ">
	<label for="donDeGentes">
		<g:message code="selector.donDeGentes.label" default="Don De Gentes" />
		
	</label>
	<g:checkBox name="donDeGentes" value="${selectorInstance?.donDeGentes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'economia', 'error')} ">
	<label for="economia">
		<g:message code="selector.economia.label" default="Economia" />
		
	</label>
	<g:checkBox name="economia" value="${selectorInstance?.economia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'ejercicio', 'error')} ">
	<label for="ejercicio">
		<g:message code="selector.ejercicio.label" default="Ejercicio" />
		
	</label>
	<g:checkBox name="ejercicio" value="${selectorInstance?.ejercicio}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'gastronomia', 'error')} ">
	<label for="gastronomia">
		<g:message code="selector.gastronomia.label" default="Gastronomia" />
		
	</label>
	<g:checkBox name="gastronomia" value="${selectorInstance?.gastronomia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'historia', 'error')} ">
	<label for="historia">
		<g:message code="selector.historia.label" default="Historia" />
		
	</label>
	<g:checkBox name="historia" value="${selectorInstance?.historia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'internet', 'error')} ">
	<label for="internet">
		<g:message code="selector.internet.label" default="Internet" />
		
	</label>
	<g:checkBox name="internet" value="${selectorInstance?.internet}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'lectura', 'error')} ">
	<label for="lectura">
		<g:message code="selector.lectura.label" default="Lectura" />
		
	</label>
	<g:checkBox name="lectura" value="${selectorInstance?.lectura}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'lenguajes', 'error')} ">
	<label for="lenguajes">
		<g:message code="selector.lenguajes.label" default="Lenguajes" />
		
	</label>
	<g:checkBox name="lenguajes" value="${selectorInstance?.lenguajes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'liderazgo', 'error')} ">
	<label for="liderazgo">
		<g:message code="selector.liderazgo.label" default="Liderazgo" />
		
	</label>
	<g:checkBox name="liderazgo" value="${selectorInstance?.liderazgo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'manualidades', 'error')} ">
	<label for="manualidades">
		<g:message code="selector.manualidades.label" default="Manualidades" />
		
	</label>
	<g:checkBox name="manualidades" value="${selectorInstance?.manualidades}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'musica', 'error')} ">
	<label for="musica">
		<g:message code="selector.musica.label" default="Musica" />
		
	</label>
	<g:checkBox name="musica" value="${selectorInstance?.musica}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'peliculas', 'error')} ">
	<label for="peliculas">
		<g:message code="selector.peliculas.label" default="Peliculas" />
		
	</label>
	<g:checkBox name="peliculas" value="${selectorInstance?.peliculas}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'politica', 'error')} ">
	<label for="politica">
		<g:message code="selector.politica.label" default="Politica" />
		
	</label>
	<g:checkBox name="politica" value="${selectorInstance?.politica}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'puzzles', 'error')} ">
	<label for="puzzles">
		<g:message code="selector.puzzles.label" default="Puzzles" />
		
	</label>
	<g:checkBox name="puzzles" value="${selectorInstance?.puzzles}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'redaccion', 'error')} ">
	<label for="redaccion">
		<g:message code="selector.redaccion.label" default="Redaccion" />
		
	</label>
	<g:checkBox name="redaccion" value="${selectorInstance?.redaccion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'tecnologia', 'error')} ">
	<label for="tecnologia">
		<g:message code="selector.tecnologia.label" default="Tecnologia" />
		
	</label>
	<g:checkBox name="tecnologia" value="${selectorInstance?.tecnologia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'viajar', 'error')} ">
	<label for="viajar">
		<g:message code="selector.viajar.label" default="Viajar" />
		
	</label>
	<g:checkBox name="viajar" value="${selectorInstance?.viajar}" />

</div>

<div class="fieldcontain ${hasErrors(bean: selectorInstance, field: 'videojuegos', 'error')} ">
	<label for="videojuegos">
		<g:message code="selector.videojuegos.label" default="Videojuegos" />
		
	</label>
	<g:checkBox name="videojuegos" value="${selectorInstance?.videojuegos}" />

</div>

