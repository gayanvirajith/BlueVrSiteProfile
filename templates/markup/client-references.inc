<div class="quotesHome">
    <ul class="list-unstyled slides">
        <?php $animates = array(
            'p-center' => 'fadeInDown',
            'p-center-2' => 'fadeInUp',
        ); ?>

        <?php foreach ($references as $ref): ?>

            <?php

            /* Pick random row of element */
            $randomAnimateRow = each($animates);

            $animateStyle = $randomAnimateRow['value'];

            ?>

            <li class="row">
                <input type="hidden" value="<?php echo $animateStyle ?>" id="animate-option"/>
                <div class="col-sm-12">
                    <i class="fa fa-fw fa-quote-right"></i>
                    <blockquote class="text-center">

                        <?php if ($ref->body) echo $ref->body;?>
                        <?php if ($ref->label && $ref->label_value ): ?>
                            <small><?php echo $ref->label; ?>&nbsp;<cite title="<?php echo $ref->label_value; ?>"><?php echo $ref->label_value; ?></cite></small>
                        <?php endif; ?>
                    </blockquote>

                    <?php if ($ref->image): ?>
                        <img src="<?php echo $ref->image->url; ?>" alt="<?php echo $ref->image->description;?>" class="img-responsive img-circle text-center margin-zero-auto animated <?php echo $randomAnimateRow['key']; ?>"/>
                    <?php else:?>
                        <img src="<?php echo $config->urls->templates ?>styles/images/default-100x100.png" class="img-responsive img-circle text-center margin-zero-auto animated <?php echo $randomAnimateRow['key']; ?>" />
                    <?php endif;?>

                </div>
            </li>
        <?php endforeach;?>
    </ul>
</div>