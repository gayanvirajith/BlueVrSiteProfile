<?php $counter = 0;?>
<?php foreach($featureItems as $i => $featureChunk): ?>
    <div class="row row-<?php echo $i?> feature-set">
        <?php foreach($featureChunk as $featureItem):?>
            <div class='col-sm-4 text-center feature'>
                <div class='animated hiding' data-animation='fadeInUp' data-delay='<?php echo ($counter*500)?>'>
                    <?php if ($featureItem->label_text):?>
                        <i class="fa <?php echo $featureItem->label_text;?>"></i>
                    <?php endif; ?>
                    <h3><?php echo $featureItem->title ?></h3>
                    <?php if ($featureItem->body) echo $featureItem->body; ?>
                </div>
            </div>
        <?php ++$counter; endforeach; ?>
    </div>
<?php endforeach; ?>