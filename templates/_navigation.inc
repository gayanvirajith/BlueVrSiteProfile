<?php

/**
 * _navigation.inc - Navigation/markup generating helper functions
 *
 * This file contains various "render" functions that generate navigation markup
 * specific to the Blue-VR site profile (theme).
 *
 * What's Here:
 *
 * renderNav(PageArray $items, [$options]) - Render a generic navigation list
 * renderTopNav(PageArray $items, [array $options]) - Render Bootstrap 'nav-bar' navigation
 * renderBottomNav() - Render footer navigation
 * renderBreadcrumbs(PageArray $items) - Render breadcrumb navigation
 *
 * Credits:
 *  I have used some same navigation methods used by Ryan Cramer.
 *  So full credit to Ryan Cramer
 */

/**
 * Render a <ul> navigation list
 *
 */
function renderNav(PageArray $items, array $options = array()) {

    if(!count($items)) return '';

    $defaults = array(
        'class' => '', // class for the <ul>
        'active' => 'active', // class for active item
        'tree' => false, // render tree to reach current $page?
    );

    $options = array_merge($defaults, $options);
    $page = wire('page');
    $out = "<ul class='$options[class]'>";

    foreach($items as $item) {

        // if this item is the current page, give it an 'active' class
        $class = $item->id == $page->id ? " class='$options[active]'" : "";

        // render linked item title
        $out .= "<li$class><a href='$item->url'>$item->title</a> ";

        // optionally render a tree recursively to current $page
        if($options['tree']) {
            if($page->parents->has($item) || $item->id == $page->id) {
                $out .= renderNav($item->children("limit=50"), array(
                    'fields' => $options['fields'],
                    'tree' => true,
                ));
            }
        }

        $out .= "</li>";
    }

    $out .= "</ul>";
    return $out;
}

/**
 * Render a <ul> navigation list
 *
 */
function renderTopNav(PageArray $items, array $options = array(), $level = 0) {

    $defaults = array(
        'tree' => 1, // number of levels it should recurse into the tree
        'dividers' => false,
        'repeat' => true, // whether to repeat items with children as first item in their children nav
    );

    $options = array_merge($defaults, $options);
    $divider = $options['dividers'] ? "<li class='divider'></li>" : "";

    $page = wire('page');
    $out = '';

    foreach($items as $item) {

        $numChildren = $item->numChildren(true);
        if($level+1 > $options['tree'] || $item->id == 1) $numChildren = 0;
        $class = '';
        $anchorProperties = "";
        $anchorClass = '';
        $dropdownCaret = '';


        $title = $item->title;

        if($numChildren) {
            $class .= "dropdown ";
            $anchorProperties = "data-toggle='dropdown'";
            $anchorClass = 'dropdown-toggle';
            $dropdownCaret = '<b class="caret"></b>';
        }
        if($page->id == $item->id) $class .= "current ";
        if(($item->id > 1 && $page->parents->has($item)) || $page->id == $item->id) $class .= "active ";
        if($class) $class = " class='" . trim($class) . "'";

        $out .= "$divider<li$class><a class='{$anchorClass}' href='$item->url' {$anchorProperties} title='{$title}'>$title $dropdownCaret</a>";

        if($numChildren) {
            $out .= "<ul class='dropdown-menu'>";
            if($options['repeat']) $out .= "$divider<li><a href='$item->url'>$item->title</a></li>";
            $out .= renderTopNav($item->children, $options, $level+1);
            $out .= "</ul>";
        }

        $out .= "</li>";
    }

    return $out;
}

/**
 * Render footer navigation
 */
function renderBottomNav() {

    $page = wire('pages')->findOne("template=bottom-navigation");

    if (!count($page->links)) return '';

    $options = array(
        'class' => 'bottom-nav list-inline',
    );

    $out = '';
    $out .= renderNav($page->links, $options);
    return $out;
}

/**
 * Render breadcrumb navigation
 *
 */
function renderBreadcrumbs(PageArray $items) {

    // if the page has a headline that's different from the title, add it to the bredcrumbs
    $page = wire('page');
    if($page->headline) $items->add($page);

    $options = array(
        'class' => 'breadcrumb animated hiding fadeIn',
    );

    return renderNav($items, $options);
}