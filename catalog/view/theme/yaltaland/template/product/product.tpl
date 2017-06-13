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

    <div class="container">
        <div class="row" id="photo">
            <div class="col-md-12">
                <div class="slider-block">
                    <div class="owl-carousel owl-theme slider">
                    <?php if($sliders){ ?>
                    <?php foreach($sliders as $slider){ ?>
                        <div>
                            <img src="<?php echo $slider['full']; ?>" alt="">
                            <p class="description-slide"><?php echo $slider['description']; ?></p>
                        </div>
                    <?php } ?>
                    <?php }else{ ?>
                    <div>
                        <div>
                            <img src="catalog/view/theme/yaltaland/images/slide-1.jpg" alt="">
                            <p class="description-slide">Стильная, оригинальная квартира с качественным европейским ремонтом в современном стиле. Со вкусом укомплектована всей необходимой мебелью, встроенный кухонный
                            гарнитур оборудован необходимой бытовой техникой.2 санузла. Санузлы </p>
                        </div>
                    </div>
                    <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- end slider -->

    <!-- start galery -->

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="title"><?php echo $description_image; ?></h2>
                
                <div class="owl-carousel owl-theme galery-slide">
                <?php if($images){ ?>
                <?php foreach($images as $image){ ?>
                    <div><a class="gallery" rel="group" href="<?php echo $image['popup']; ?>"><img src="<?php echo $image['thumb']; ?>" alt=""></a></div>
                <?php } ?>
                <?php }else{ ?>
                    <div><a class="gallery" rel="group" href="images/slide-1.jpg"><img src="images/slide-1.jpg" alt=""></a></div>
                <?php } ?>  
                </div>
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
                    <!-- start map -->
                    <div id="map" style="width:100%; height:300px"></div>
                    <script src="http://api-maps.yandex.ru/2.0/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
                    <?php if($coordinates){ ?>
                        <script type="text/javascript">
                            var myMap;
                            
                            ymaps.ready(init);
                            function init(){
     
                                var myCoords = [<?php echo $coordinates; ?>];  
                                var myGeocoder = ymaps.geocode(myCoords);
                                myGeocoder.then(
                                    function (res){
                                        var firstGeoObject = res.geoObjects.get(0),
                                            myMap = new ymaps.Map
                                            ("map",
                                                {
                                                    center: firstGeoObject.geometry.getCoordinates(),
                                                    zoom: 15
                                                }
                                            );
                                        var myPlacemark = new ymaps.Placemark
                                        (
                                            firstGeoObject.geometry.getCoordinates(),
                                            {
                                                iconContent: ''
                                            },
                                            {
                                                preset: 'twirl#blueStretchyIcon'
                                            }
                                        );
                                        myMap.geoObjects.add(myPlacemark);
                                        myMap.controls.add(new ymaps.control.ZoomControl()).add(new ymaps.control.ScaleLine()).add('typeSelector');
                                    },
                                    function (err){
                                        alert(err.message);
                                    }
                                );
                            }
                        </script>
                    <?php } ?>	    
                </div>
            </div>
        </div>
    </div>
    <!-- end map-block -->
<?php echo $footer; ?>
