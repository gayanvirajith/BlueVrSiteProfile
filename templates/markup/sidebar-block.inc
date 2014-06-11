<h3 class="sidebar-h3"><?php echo $sidebar->get('headline|title')?></h3>
<div class="content-inner-wrapper">
    <?php

    $content = str_replace(
        array('<ul>','<!-- pagebreak -->'),
        array('<ul class="default-list-square">', '<br/>'),
        $sidebar->body
    );
    echo $content;
    ?>
</div>