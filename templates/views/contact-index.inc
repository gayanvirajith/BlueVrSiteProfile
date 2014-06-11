<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?sensor=false'></script>
<script type='text/javascript' src='<?php echo $config->urls->templates?>scripts/RCDMap.js'></script>

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

                <div class="contact-form ">
                    <?php echo getContactUsForm(); ?>
                </div>
            </div>
            <div class="col-sm-4 no-gutter">
                <!-- Render google map -->
                <?php echo renderGoogleLocationMap(); ?>
                <!---->
                <?php echo renderSidebar(); ?>
            </div>
        </div>
    </div>
</div>


<!-- Page blocks -->
<?php echo renderPageBlocks();?>
