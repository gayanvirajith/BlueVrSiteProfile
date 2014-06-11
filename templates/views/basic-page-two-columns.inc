<!-- Page Headline -->
<div class="header-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h1 class="animated hiding fadeIn"><?php echo $headline; ?></h1>
            </div>
            <div class="col-sm-4">
                <?php echo renderBreadcrumbs($page->parents()->append($page)); ?>
            </div>
        </div>
    </div>
</div>

<!-- Page Body -->
<div class="body-content-wrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 no-gutter text-left">
                <?php echo $page->body; ?>
            </div>
            <div class="col-sm-4 no-gutter">
                <?php echo renderSidebar(); ?>
            </div>
        </div>
    </div>
</div>
<!-- Page blocks -->
<?php echo renderPageBlocks();?>
