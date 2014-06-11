<?php
//Create delegate template
$template = new TemplateFile($config->paths->templates . "views/{$page->template}.inc");
//assign the rendered view to content variable to show up on _done.php
$template->set('homepage', $homepage);
$template->set('headline', $headline);
$content = $template->render();