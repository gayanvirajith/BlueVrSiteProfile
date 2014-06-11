<?php

/***************************************************************************************
 * _functions.inc - SHARED BLUE-VR SITE PROFILE (THEME) FUNCTIONS
 *
 * The following defined here so that they can be used by multiple template files.
 * This file contains various "render" functions that generate markups specific
 * to the BLUE-VR site profile (theme).
 *
 * What's Here:
 *
 * getFeatureSet() - Render site feature set.
 * renderOnPageBlocks() - Render on-page blocks.
 * renderPageBlocks() - Render common page blocks.
 * renderCopyrights(Page $page) - Render site copyrights content
 * getReferences() - Render testimonial/references
 * renderSidebar() - Return sidebar item as html markup
 * renderGoogleLocationMap() - Render google map locations
 * getContactUsForm() - Render contact form
 *
 *
 */


/**
 * getFeatureSet() - Returns site feature set markup.
 *
 * Feature set is a html block that used on the home page.
 * You can find these on Admin > Pages > Tools > Conversion: Service/Feature set.
 *
 * In order to get render the output we used delegate approach in ProcessWire.
 * So for the approach all template markup files were saved under templates/markup.
 *
 * @return String - html markup of features
 */
function getFeatureSet() {

    /* Find feature sets*/
    $pages = wire('pages')->find("template=conversion-feature");

    /* if count is zero simple returns empty string */
    if (!count($pages)) return '';

    $out = '';
    /* Get the global config */
    $config = wire('config');

    /* We used to render 3 items per row */
    $perPage = 3;

    /* Chunk the page array according to page row config */
    $featureItems = array_chunk($pages->getArray(), $perPage);
    //Create Quick delegate template
    $template = new TemplateFile($config->paths->templates . "markup/feature-set.inc");

    //Assign the rendered view to content variable to show up on feature-set.inc
    $template->set('featureItems', $featureItems);
    //Get the output and save it on $out.
    $out .= $template->render();

    return $out;
}

/**
 * renderOnPageBlocks() - Return on-page blocks as html markup
 *
 * On-page blocks are page blocks that you can add in to your page.
 *
 * Page blocks comes with six styles
 *
 *  1:= Display body text first and followed by image
 *  2:= Display image first and followed by body text
 *  3:= Display body text only (aligned center)
 *  4:= Render image as background and display text on top of the background.
 *  5:= Display body text only (aligned left)
 *  6:= Display body text and image on second row (center)
 *
 * Each style render different page blocks.
 *
 * In order to get render the output we used delegate approach in ProcessWire.
 * So for the approach all template markup files were saved under templates/markup.
 *
 * @return string - html markup of page blocks
 */
function renderOnPageBlocks() {

    // Get the current page instance from global scope.
    $page = wire('page');
    // Get the config instance from global scope.
    $config = wire('config');

    if (!count($page->on_page_blocks)) return '';

    /* Get on-page blocks */
    $pageBlocks = $page->on_page_blocks;

    $out = '';

    foreach ($pageBlocks as $block) {

        //Create delegate template
        $template = new TemplateFile($config->paths->templates . "markup/page-block-type-{$block->render_option}.inc");
        //Assign the rendered view to content variable to show up on page-block-type-x.inc
        $template->set('image', $block->image);

        $content = str_replace(
            // find these:
            array('<ul>','<!-- pagebreak -->'),
            // and replace with these:
            array('<ul class="default-list-square">', '<br/>'),
            // in the $block->body text
            $block->body
        );

        //Assign the rendered view to content variables to show up on page-block-type-x.inc
        $template->set('content', $content);
        $template->set('headline', $block->get('headline|title'));

        //Get the output and save it on $out.
        $out .= $template->render();
    }

    return $out;
}

/**
 *
 * renderPageBlocks() - Return common page blocks as html markup
 *
 * Common Page blocks are reusable page blocks that you can add in to your page
 * other that on-page blocks.
 *
 * You can find these on Admin > Pages > Tools > Conversion: Common page blocks.
 *
 * Page blocks comes with six styles
 *
 *  1:= Display body text first and followed by image
 *  2:= Display image first and followed by body text
 *  3:= Display body text only (aligned center)
 *  4:= Render image as background and display text on top of the background.
 *  5:= Display body text only (aligned left)
 *  6:= Display body text and image on second row (center)
 *
 * Each style render different page blocks.
 *
 * In order to get render the output we used delegate approach in ProcessWire.
 * So for the approach all template markup files were saved under templates/markup.
 *
 * @return string - html markup of page blocks
 */
function renderPageBlocks() {

    // Get the current page instance from global scope.
    $page = wire('page');
    // Get the config instance from global scope.
    $config = wire('config');

    if (!count($page->page_blocks)) return '';

    /* Get page blocks */
    $pageBlocks = $page->page_blocks;

    $out = '';

    foreach ($pageBlocks as $block) {

        //Create delegate template
        $template = new TemplateFile($config->paths->templates . "markup/page-block-type-{$block->render_option}.inc");
        //assign the rendered view to content variable to show up on page-block-type-x.inc
        $template->set('image', $block->image);

        $content = str_replace(
            //Find these
            array('<ul>','<!-- pagebreak -->'),
            //Replace with theese
            array('<ul class="default-list-square">', '<br/>'),
            //In the $block->body text
            $block->body
        );

        //Assign the rendered view to content variables to show up on page-block-type-x.inc
        $template->set('content', $content);
        $template->set('headline', $block->get('headline|title'));

        //Get the output and save it on $out.
        $out .= $template->render();
    }

    return $out;
}

/**
 * renderCopyrights(Page $page) - Render site copyrights content
 * You can find site copyrights content under Admin > Pages > Home edit page and find Global site settings.
 *
 * @param Page $page - instance of the page.
 * @return String - html markup string of copyright statement
 */
function renderCopyrights(Page $page) {

    if (!$page->summary) return '';

    $text = str_replace(
        // find these:
        array('{year}'),
        // and replace with these:
        array(date('Y')),
        // in the copyright_text text
        $page->summary);

    return $text;
}

/**
 * getReferences() - Returns testimonial/references markup
 *
 * References are the pages that you can save client references/testimonial
 * You can add/edt references under Admin > Pages > Tools > Conversion: References
 *
 * In order to get render the output we used delegate approach in ProcessWire.
 * So for the approach all template markup files were saved under templates/markup.
 *
 * Note: currently fetch limit set to 10;
 *
 * Return client references using external markup
 * @return string - references html markup string
 */
function getReferences() {

    //Find references
    $references = wire('pages')->find("template=client-reference, limit=10");

    if (!count($references)) return '';

    //Get global config instance
    $config = wire('config');

    $out = '';

    //Create delegate template
    $template = new TemplateFile($config->paths->templates . "markup/client-references.inc");
    //assign the rendered view to content variable to show up on client-references.inc
    $template->set('references', $references);

    //Get the output and save it on $out.
    $out .= $template->render();

    return $out;
}

/**
 *
 * renderSidebar() - Return sidebar item as html markup
 *
 * Sidebar is used for two column page layout and contact-us page layout.
 * Sidebar can be used to add multiple sidebar items in to your page.
 *
 * @return string - sidebar html markup
 */
function renderSidebar() {

    $out = '';

    //Get current page instance from global scope.
    $page = wire('page');
    //Get config instance
    $config = wire('config');

    /* if pages are empty returns empty string */
    if (!count($page->sidebars)) return '';

    foreach($page->sidebars as $sidebarItem) {

        //Create delegate template
        $template = new TemplateFile($config->paths->templates . "markup/sidebar-block.inc");
        //assign the rendered view to content variable to show up on sidebar-block.inc
        $template->set('sidebar', $sidebarItem);

        //Get the output and save it on $out.
        $out .= $template->render();
    }

    return $out;
}

/**
 * Render location markups on google maps
 * Method will return HTML markup and java scripts
 * Note: In order to view the map on frontend, template should have jquery enabled
 * in header section (Not in the footer).
 */
function renderGoogleLocationMap() {
    // var to store html markup
    $out = '';

    //Get current page instance from global scope.
    $page = wire('page');

    //Get config instance
    $config = wire('config');

    /* if fields are empty returns empty string */
    if (!$page->maps) return '';

    //Create delegate template
    $template = new TemplateFile($config->paths->templates . "markup/google-map.inc");
    //assign the rendered view to content variable to show up on google-map.inc
    $template->set('sidebarTitle', $page->label_text);
    $template->set('maps', $page->maps);

    //Get the output and save it on $out.
    $out .= $template->render();

    // Return html markup
    return $out;
}

/**
 * Render contact us form.
 *
 * @return string Html formatted form
 */
function getContactUsForm() {
    $content     = '';

    $modules = wire('modules');

    if (!$modules->isInstalled("FormTemplateProcessor")) return "<p>"
        . __("Please install FormTemplateProcessor in order to render contact form.") . "</p>";

    $formRequiredElements = array(
        'contact_form_name',
        'contact_form_telephone',
        'contact_form_email',
        'contact_form_message'
    );

    $form = $modules->get('FormTemplateProcessor');

    $form->template = wire('templates')->get('contact-form'); // required
    $form->requiredFields = $formRequiredElements;
    $form->email = wire('config')->adminEmail; // optional, sends form as email
    $form->parent = wire('page'); // optional, saves form as page
    $content .= $form->render(); // draw form or process submitted form

    return $content;
}
