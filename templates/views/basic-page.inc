<?php if ($page->hero_unit): ?>
    <div class="hero-unit">
        <input type="hidden" name="bg-image" id="bg-image" value="<?php echo $page->hero_unit->image->url?>"/>
        <div class="container text-center">
            <div class="hero-unit-content">
                <?php
                if ($page->hero_unit->hero_unit_text){
                    $heroUnit = '';
                    $heroUnit= str_replace(
                        // find these:
                        array('<!-- pagebreak -->'),
                        // and replace with these:
                        array('<br/>'),
                        // in the $body text
                        $page->hero_unit->hero_unit_text);
                    if (isset($heroUnit) && !empty($heroUnit))
                        echo $heroUnit;
                }
                ?>

                <?php if ($page->hero_unit->page_link): ?>
                    <a class="btn btn-bordered btn-lg" href="<?php echo $page->hero_unit->page_link->url; ?>">
                        <?php
                            if ($page->hero_unit->label) echo $page->hero_unit->label;
                            else echo $page->hero_unit->page_link->title;
                        ?>
                    </a>
                <?php endif; ?>
            </div>
        </div>
    </div>
<?php endif; ?>

<!-- Page Headline -->
<div class="header-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h1 class="animated hiding fadeIn"><?php echo $headline; ?></h1>
            </div>
            <div class="col-sm-4 ">
                <?php echo renderBreadcrumbs($page->parents()->append($page)); ?>
            </div>
        </div>
    </div>
</div>


<!-- Page Body -->
<div class="body-content-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 no-gutter text-left">
                <?php echo $page->body; ?>
            </div>
        </div>
    </div>
</div>


<!-- Page blocks -->
<?php echo renderOnPageBlocks();?>

<?php echo renderPageBlocks();?>
