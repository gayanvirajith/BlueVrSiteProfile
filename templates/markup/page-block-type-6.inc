<div class="page-block-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 page-block-type-3 text-center">
                <h2><?php echo $headline; ?></h2>

                <?php echo $content; ?>

                <?php if ($image):?>
                    <img src="<?php echo $image->url; ?>" alt="<?php echo $image->description; ?>"  class="img-responsive margin-zero-auto animated hiding"  data-animation='fadeInDown' data-delay='0'/>
                <?php endif;?>
            </div>
        </div>
    </div>
</div>