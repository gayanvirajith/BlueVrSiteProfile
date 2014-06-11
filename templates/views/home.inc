<?php if ($page->hero_unit): ?>
    <div class="hero-unit">
        <input type="hidden" name="bg-image" id="bg-image" value="<?php echo $page->hero_unit->image->url?>"/>
        <div class="container text-center">
            <div class="hero-unit-content animated hiding fadeInDown">
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

                <a class="btn btn-bordered btn-lg" href="<?php if ($page->hero_unit->link) echo $page->hero_unit->link->url; else echo '#';?>">
                    <?php
                    if ($page->hero_unit->label_text) echo $page->hero_unit->label_text;
                    else echo $page->hero_unit->link->title;

                    if ($page->hero_unit->label_value) echo "<i class='fa {$page->hero_unit->label_value}'></i>"; ?>

                </a>

            </div>
        </div>
    </div>
<?php endif; ?>

<!-- Page Body -->
<div class="body-content-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 no-gutter text-left">
                <h1><?php echo $headline;?></h1>
                <?php echo $page->body; ?>
            </div>
        </div>
    </div>
</div>

<div class="feature-set-wrapper">
    <div class="container">
        <!-- Feature set -->
        <?php echo getFeatureSet(); ?>
    </div>
</div>

<!--<!-- Page blocks -->
<?php echo renderOnPageBlocks();?>
<?php echo renderPageBlocks();?>

<!-- References block -->
<div class="references-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 no-gutter text-center">
                <?php echo getReferences(); ?>
            </div>
        </div>
    </div>
</div>