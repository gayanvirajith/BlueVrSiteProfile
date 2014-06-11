<?php

/**
 * This is the main markup file containing the container HTML that all pages are output in.
 *
 * The primary focus of this file is to output these variables (defined in _init.php) in the
 * appropriate places:
 *
 * $headline - Text that goes in the primary <h1> headline
 * $browserTitle - The contents of the <title> tag
 * $body - Content that appears in the bodycopy area
 * $side - Additional content that appears in the sidebar
 *
 * Note: if a variable called $useMain is set to false, then _main.php does nothing.
 *
 */

// if any templates set $useDone to false, abort displaying this file
// an example of when you'd want to do this would be XML sitemap or AJAX page.
if(!$useDone) return;

/**********************************************************************************************/

?><!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo $seoMetaDescription ?>">
    <title><?php echo $browserTitle; ?></title>
    <?php if($modules->isInstalled("AllInOneMinify")): ?>
        <link rel="stylesheet" href="<?php echo AllInOneMinify::CSS(
            array(
                'styles/bootstrap.min.css',
                'styles/font-awesome.min.css',
                'styles/flexslider.css',
                'styles/flat-theme.css',
                'styles/animate.css',
                'styles/style.css',
                'styles/flexslider.css',
                'styles/mq.css')
        ); ?>">
    <?php else: ?>
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/font-awesome.min.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/flexslider.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/flat-theme.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/animate.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/style.css">
        <link rel="stylesheet" href="<?php echo $config->urls->templates?>styles/mq.css">
    <?php endif; ?>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<?php echo $config->urls->templates?>/scripts/respond.min.js"></script>
    <script src="<?php echo $config->urls->templates?>/scripts/html5shiv.js"></script>
    <![endif]-->

    <!-- Google web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

</head>
<body>
<div class="nav-container-wrap">
    <!-- NAVBAR FIXED
    ================================================== -->
    <div class="navbar navbar-default navbar-fixed-top navbar-light" id="navBar">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a title="<?php echo $homepage->title; ?>" class="navbar-brand <?php echo (($page->url === '/')? 'home-active-background' : '')?>" href="<?php echo $homepage->url; ?>">

                    <?php if ($homepage->image): ?>
                        <img src="<?php echo $homepage->image->url; ?>" alt="<?php echo $homepage->image->description; ?>" class="img-responsive"/>
                    <?php else: ?>
                        <img src="<?php echo $config->urls->templates?>styles/images/logo.png" alt="Logo" class="img-responsive"/>
                    <?php endif; ?>

                </a>
            </div>
            <div class="navbar-collapse collapse ">
                <ul class="nav navbar-nav navbar-right">
                    <?php
                    $class = ($config->urls->root=== $page->url) ? " class='active'" : "class=''";
                    echo renderTopNav($homepage->children);
                    ?>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<?php echo $content;?>

<div class="bottom-nav-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <?php echo renderBottomNav($homepage); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <p><?php echo renderCopyrights($homepage); ?></p>
                <p>
                    <small>
                        <?php echo __('Powered by ')?>
                        <a href="http://processwire.com" target="_blank" title="ProcessWire Open Source CMS">
                            ProcessWire Open Source CMS
                        </a>
                    </small>
                </p>
            </div>
        </div>
    </div>
</div>

<?php if($modules->isInstalled("AllInOneMinify")): ?>
    <script src="<?php echo AIOM::JS(
        array(
            'scripts/jquery.m.js',
            'scripts/bootstrap.min.js',
            'scripts/jquery.flexslider.js',
            'scripts/jquery.appear.js',
            'scripts/smoothscroll.js',
            'scripts/jquery.functions.js'
        )); ?>">
    </script>
<?php else: ?>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/jquery.m.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/jquery.flexslider.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/jquery.appear.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/smoothscroll.js"></script>
    <script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/jquery.functions.js"></script>
<?php endif; ?>

<script type="text/javascript">
    WebFontConfig = {
        google: { families: [ 'Open+Sans:300:latin' ] }
    };
    (function() {
        var wf = document.createElement('script');
        wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
            '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
    })(); </script>
</body>
</html>