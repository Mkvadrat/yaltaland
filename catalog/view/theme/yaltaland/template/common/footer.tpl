    <!-- start footer -->
    <footer class="footer">
        <div class="container-fluid icons-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li>Полная проверка юридической чистоты объекта</li>
                            <li>Юридическое сопровождение</li>
                            <li>Отсутствие скрытых комиссий</li>
                            <li>Оплата после проведения сделки</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row" id="contacts">
                <div class="col-md-6">
                    <div class="contacts-block">
                        <img src="<?php echo $config_image; ?>" alt="">
                        <p class="title-contact">Наши контакты</p>
                        <p>Телефон: <a href="tel: <?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                        <p>Email: <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></p>
                        <p>Skype: <a href="skype: <?php echo $skype; ?>"><?php echo $skype; ?></a></p>
                        <address>Адрес: <?php echo $address; ?></address>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-block">
                        <p class="form-title">связаться со мной</p>
                        <div class="form">
                            <input type="text" id="name" placeholder="Ваше имя * :">
                            <input type="email" id="email" placeholder="Email * :">
                            <input type="tel" id="tel" placeholder="Телефон * :">
                            <textarea id="message" placeholder="Текст сообщения * :"></textarea>
                            <input type="submit" onclick="SendForm(); " value="Отправить">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bottom-line-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="make-in">
                            <a href="http://mkvadrat.com/">сайт разработан в <img src="catalog/view/theme/yaltaland/images/m2-logo.jpg" alt=""></a>
                        </div>
                        <!-- <div class="too-top">
                            <a class="top ancLinks" href="#top"></a>
                        </div> -->
                        <p class="rights-block">&copy; Все права защищены 2017</p>
                        <p class="logo"><a href="http://ялтапартнер.рф"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /> <span>ялтапартнер.рф</span></a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- end footer -->

<script type="text/javascript">
function SendForm(){
	$.ajax({
		url: 'index.php?route=common/footer/sendForm',
		type: 'post',
		data: {  
            'name' : $('#name').val(),
            'email' : $('#email').val(),
            'tel' : $('#tel').val(),
            'message' : $('#message').val(),
        },
		dataType: 'json',
		success: function(data) {
			swal(data.message);
		}
	});
}
</script>

<script type="text/javascript">
        $(document).ready(function() {
            $("a.ancLinks").click(function () { 
                var elementClick = $(this).attr("href");
                var destination = $(elementClick).offset().top;
                $('html,body').animate( { scrollTop: destination }, 1100 );
                return false;
            });
        });
</script>

<script>
    $(document).ready(function(){
        $('.slider').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        autoplay:true,
        smartSpeed:2000,
        autoplayTimeout:5000,
        dots:false,
        stopOnHover:true,
        navigationText:["",""],
        rewindNav:true,
        pagination:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
        });
    });
</script>

<script>
    $(document).ready(function(){
        $('.galery-slide').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        autoplay:false,
        smartSpeed:2000,
        autoplayTimeout:5000,
        dots:false,
        stopOnHover:true,
        navigationText:["",""],
        rewindNav:true,
        pagination:true,
        responsive:{
            320:{
                items:1
            },
            400:{
                items:2
            },
            600:{
                items:3
            },
            1000:{
                items:4
            }
        }
        });

    });
</script>

<script type="text/javascript">
$(document).ready(function() {
    //$("a.gallery").fancybox();
$('[data-fancybox]').fancybox({
	protect: true
});
});
</script>


<script type="text/javascript">
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>

<script type="text/javascript">
    $(".menu-button").click(function() {
        $(".menu-box ul").slideToggle();
    });
</script>

<div class="button-up"><div class="top">▲<br/>Наверх</div></div>

</body>
</html>