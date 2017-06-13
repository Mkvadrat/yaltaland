<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/reset.css">
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/fonts.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/styles.css">
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/media.css">

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- OWL-CAROUSEL -->
<script src="catalog/view/theme/yaltaland/js/owl.carousel.min.js"></script>
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/owl.carousel.min.css">
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/owl.theme.default.css">

<!-- FANCYBOX -->
<link rel="stylesheet" href="catalog/view/theme/yaltaland/js/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/yaltaland/js/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<script src="catalog/view/theme/yaltaland/js/jquery.mousewheel-3.0.6.pack.js"></script>
<link rel="stylesheet" href="catalog/view/theme/yaltaland/js/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/yaltaland/js/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="catalog/view/theme/yaltaland/js/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
<link rel="stylesheet" href="catalog/view/theme/yaltaland/js/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/yaltaland/js/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<!-- SWEETALERT -->
<script src="catalog/view/theme/yaltaland/js/sweetalert.min.js"></script>
<link rel="stylesheet" href="catalog/view/theme/yaltaland/css/sweetalert.css">

<!-- TOP -->
<script src="catalog/view/theme/yaltaland/js/top.js"></script>

<!-- HTML5 for IE -->
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
    
    <!-- start header -->
    <header id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="header-title"><?php echo $title_header; ?></p>
                    <!--<p class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></p>-->
                </div>
            </div>
        </div>
        <div class="container-fluid bg-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="menu-box">
                            <button type="button" class="menu-button hidden-md hidden-lg"><i class="fa fa-bars"></i></button>
                            <ul class="menu">
                                <li><a href="#descr" class="ancLinks">Описание объекта</a></li>
                                <li><a href="#photo" class="ancLinks">Фотогалерея объекта</a></li>
                                <li><a href="#location" class="ancLinks">Расположение</a></li>
                                <li><a href="#contacts" class="ancLinks">Контакты</a></li>
                            </ul>
                        </nav>

                        <p class="header-tel"><img src="catalog/view/theme/yaltaland/images/icon-1.png" alt=""><img src="catalog/view/theme/yaltaland/images/icon-2.png" alt=""><a href="tel: <?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->
