
# dom-limpio

<img src="dom-limpio-logo.png" alt="dom-limpio-logo.png" align="left" style="float:left;margin-right:20px;margin-bottom:20px;">

Nuestro propio reset de CSS cogiendo las ideas que más nos interesan de las diferentes fuentes (Normalize 4, HTML5 Doctor... ) e intentando añadir nuestras propias necesidades (lo que solemos emplear por defecto en los proyectos, y algunas cosas que necesitamos recurrentemente, especialmente en _mobile_).

## Reset de tipografías
La segunda parte de la idea es que **dom-limpio** resetee todos los elementos de texto al mismo estilo _base_, esto nos facilitará más tarde porder hacer cambios de marcado (por necesidades de SEO, por ejemplo) con mucho menos dolor.

Por ejemplo convertir un `<p class="titulo">` en un `<h1 class="titulo">` sin dolores de cabeza.

## Instalación / configuración

En el repo hay 2 carpetas:

`dom-limpio`  
La carpeta de los resets propiamente dichos. Podemos elegir que elementos necesitamos resetear según el proyecto (por ejemplo, si nuestro proyecto no tiene formularios no necesitamos incluir `dom-limpio/_forms.scss`, o si no deseamos resetear las tipografías podemos ignorar `dom-limpio/_type.scss`).

`site-type`  
Ejemplo de configuración de la tipografía de un proyecto, para usar de base en nuevos desarrollos.

El orden de inclusión de los parciales de CSS puede verse en `dom-limpio.scss`:

````SASS
/* Include the modules your need for your project */
@import "dom-limpio/layout";      // Base layout reset
@import "dom-limpio/type";        // Typography reset
@import "dom-limpio/forms";       // Form reset

/* Define generice type styles for the project here */
@import "site-type/variables"; // Common variables
@import "site-type/weft";      // External font
@import "site-type/sample";    // Generic type styles for your site
````
