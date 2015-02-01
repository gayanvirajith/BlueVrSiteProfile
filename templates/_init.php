<?php

/**
 * _init.php - Initialize site variables and includes.
 *
 * This file is called before any template files are rendered
 * This behavior was defined in /site/config.php - $config->prependTemplateFile
 *
 */

/*
 * Make a pre-fetched copy of the homepage available to all our templates
 * this is worthwhile since we use it so often, helps readability, etc.
 *
 */
$homepage = $pages->get('/');

/*
 * Initialize some variables used by templates and populate default values.
 * These variables will ultimately be output in the _main.php file.
 * The individual template files may choose to overwrite any of these.
 *
 */
$browserTitle = ($homepage->seo_title)? $homepage->seo_title : $page->title;
if ($page->seo_title) $browserTitle = $page->get('seo_title');

$seoMetaDescription = ($homepage->seo_meta_description)? $homepage->seo_meta_description : "";
if ($page->seo_meta_description) $seoMetaDescription = $page->seo_meta_description;

$headline = $page->get('headline|title');

$content = '';

if ($page->body) {

    /**
     * Add custom classes to some elements inserted from the rich text editor
     * so that we can identify and style them separately from others.
     *
     * In our case, we want to add to add an 'default-list-square' class to
     * <ul> elements so that we can style them
     * separately from other <ul> or <ol> tags that Bootstrap might use for
     * navigation and such. This is all optional of course.
     *
     */
    $body = str_replace(
    	// find these:
        array('<ul>', '<!-- pagebreak -->'),
        // and replace with these:
        array('<ul class="default-list-square">', '<br/>'),
        // in the $body text
        $page->body);
    if (isset($body) && !empty($body)) $page->body = $body;

}

/*
 * Whether to include the _done.php markup file? For example, your template
 * file would set it to false when generating a page for sitemap.xml
 * or ajax output, in order to prevent display of the main <html> document.
 *
 */
$useDone = true;


/*
 * Include any other shared functions we want to utilize in all our templates
 *
 */
require_once("./_navigation.inc");
require_once("./_functions.inc");
