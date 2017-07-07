<?php echo $header; ?>

    <!-- start banner -->
    <div class="container-fluid bg-banner">
        <img src="<?php echo $banner; ?>" alt="">
        <div class="container">
            <div class="row">
                <div class="col-md-12 banner-block">
                    <h1 class="banner-description"><?php echo $heading_title; ?></h1>
                </div>
            </div>
        </div>
    </div>

    <!-- start banner -->

    <!-- start banner -->
    <div class="container">
        <div class="row" id="descr">
            <div class="col-md-12">
                <?php echo $description; ?>
            </div>
        </div>
    </div>

    <!-- end banner -->

    <!-- start slider -->
    <?php if($sliders){ ?>
    <div class="container">
        <div class="row" id="photo">
            <div class="col-md-12">
                <div class="slider-block">
                    <div class="owl-carousel owl-theme slider">
                    <?php foreach($sliders as $slider){ ?>
                        <div>
                            <img src="<?php echo $slider['full']; ?>" alt="">
                            <?php if($slider['description']){ ?>
                                <p class="description-slide"><?php echo $slider['description']; ?></p>
                            <?php } ?>
                        </div>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
    <!-- end slider -->

    <!-- start galery -->

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="title"><?php echo $description_image; ?></h2>
                <?php if($images){ ?>
                <div class="owl-carousel owl-theme galery-slide">
                
                <?php foreach($images as $image){ ?>
                    <div>
                       <a href="<?php echo $image['popup']; ?>" data-fancybox="images"><img src="<?php echo $image['thumb']; ?>" /></a>
                        <!--<a class="gallery" rel="group" href="<?php //echo $image['popup']; ?>"><img src="<?php //echo $image['thumb']; ?>" alt=""></a>-->
                    </div>
                <?php } ?>              
                </div>
                <?php } ?> 
            </div>
        </div>
    </div>

    <!-- end galery -->

    <!-- start map-block -->

    <div class="container">
        <div class="row" id="location">
            <div class="col-md-12">
                <h2 class="title">Расположение: <span><?php echo $location; ?></span></h2>
                <div class="map-block">
                <div id="YMapsID" style="width:100%; height:300px"></div>
                <script src="http://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
                <script type="text/javascript">
                 
                    var myMap, myPlacemark, coords;
                 
                    ymaps.ready(init);
                 
                        function init () {
                 
                            //Определяем начальные параметры карты
                            myMap = new ymaps.Map('YMapsID', {
                                    center: [<?php if(!empty($coordinates)){ ?><?php echo $coordinates; ?><?php }else{ echo '56.326944, 44.0075'; } ?>], 
                                    zoom: 15
                                });	
                 
                            //Определяем элемент управления поиск по карте	
                            var SearchControl = new ymaps.control.SearchControl({noPlacemark:true});	
                 
                            //Добавляем элементы управления на карту
                             myMap.controls              
                                .add('zoomControl')                
                                .add('typeSelector')
                                
                            coords = [<?php if(!empty($coordinates)){ ?><?php echo $coordinates; ?><?php }else{ echo '56.326944, 44.0075'; } ?>];
                 
                            //Определяем метку и добавляем ее на карту				
                            myPlacemark = new ymaps.Placemark([<?php if(!empty($coordinates)){ ?><?php echo $coordinates; ?><?php }else{ echo '56.326944, 44.0075'; } ?>],{}, {preset: "twirl#redIcon", draggable: true});	
                 
                            myMap.geoObjects.add(myPlacemark);			
                    }
                </script>
                </div>
            </div>
        </div>
    </div>
    <!-- end map-block -->
<?php echo $footer; ?>
