<?php /* Home template */

/*
 * Check that required settings are in place.
 * Feel free to remove this if your site already works.
 *
 */
if($config->prependTemplateFile != '_init.php' || $config->appendTemplateFile != '_done.php') {
    echo '
	<h2>Please edit your /site/config.php and set:</h2>
	<pre>
	$config->prependTemplateFile = "_init.php";
	$config->appendTemplateFile = "_done.php";
	</pre>
	';
    exit;
}

/* Use delegate approach to render views */
include "./_delegate-template.inc";

?>