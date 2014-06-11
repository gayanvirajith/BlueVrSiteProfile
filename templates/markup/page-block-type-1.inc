<div class="page-block-wrapper">
    <div class="container">
        <div class="row page-block-type-1">
            <div class="col-lg-6 col-md-6 col-sm-8 no-gutter-left">
                <h2><?php echo $headline; ?></h2>
                <?php echo $content;?>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-4 hidden-xs image-col no-gutter-right">
                <?php if ($image):?>
                    <img src="<?php echo $image->url; ?>" alt="<?php echo $image->description; ?>" class="img-responsive"/>
                <?php endif;?>
            </div>
            <div class="visible-xs col-xs-12 text-center">
                <?php if ($image):?>
                    <img src="<?php echo $image->url; ?>" alt="<?php echo $image->description; ?>" class="img-responsive margin-zero-auto"/>
                <?php endif;?>
            </div>
        </div>
    </div>
</div>