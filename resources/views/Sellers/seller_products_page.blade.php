<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8" />

    <title>Home Page</title>

    <!--<link rel="shortcut icon" href="images/favicon.png" />-->

    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="site/css/bootstrap.min.css" />

    <!-- animate -->
    <link rel="stylesheet" type="text/css" href="site/css/animate.css" />

    <!-- fontawesome -->
    <link rel="stylesheet" type="text/css" href="site/css/font-awesome.css" />

    <!-- themify -->
    <link rel="stylesheet" type="text/css" href="site/css/themify-icons.css" />

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="site/css/slick.css" />

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="site/css/slick-theme.css" />
    <link rel="stylesheet" href="{{ asset('admin/css/toastr.min.css') }}">


    <!-- REVOLUTION LAYERS STYLES -->

    <link rel="stylesheet" type="text/css" href="site/revolution/css/layers.css" />

    <link rel="stylesheet" type="text/css" href="site/revolution/css/settings.css" />

    <!-- magnific-popup -->
    <link rel="stylesheet" type="text/css" href="site/css/magnific-popup.css" />

    <!-- megamenu -->
    <link rel="stylesheet" type="text/css" href="site/css/megamenu.css" />

    <!-- shortcodes -->
    <link rel="stylesheet" type="text/css" href="site/css/shortcodes.css" />

    <!-- main -->
    <link rel="stylesheet" type="text/css" href="site/css/main.css" />

    <!-- responsive -->
    <link rel="stylesheet" type="text/css" href="site/css/responsive.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>
{{-- @include('front.layouts.include.cart_sidebar_menu') --}}


<style>
    /* .main {
        font-family: Arial;
        width: 500px;
        display: block;
        margin: 0 auto;
        width: 95%;
    } */

    h3 {
        /* background: #fff; */
        color: #3498db;
        font-size: 36px;
        /* line-height: 100px; */
        /* margin: 10px; */
        padding: 2%;
        position: relative;
        /* text-align: center; */
    }

    .action {
        display: block;
        margin: 100px auto;
        width: 100%;
        text-align: center;
    }

    .action a {
        display: inline-block;
        padding: 5px 10px;
        background: #f30;
        color: #fff;
        text-decoration: none;
    }

    .action a:hover {
        background: #000;
    }

    .slick-prev,
    .slick-next {
        display: none !important;
    }

    .product-btn-links-wrapper {
        display: flex;
        justify-content: space-evenly;
        margin: 10px;
    }

    .none {
        display: none !important;
    }
    
    section {
        padding: 30px 0;
    }

    .hero-section .hero-slider .signle-slide {
        height: -moz-fit-content;
        height: fit-content;
    }

    .hero-section .hero-slider .slick-dots {
        top: unset !important;
    }
    .overflow-container {
        width: 100%;
    }
    .overflow-content {
        overflow-x: auto;
        white-space: nowrap;
        padding: 20px;
        overflow-y: hidden;
    }
    .slide-card-shadow{
        box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.367);
        display: flex;
        flex-direction: column;
        width: 10vw;
        border-radius: 15px !important;
    }
    .card-style:hover{
        border-radius: 15px !important;
        transform: scale(1.02);
        padding: 0px !important;
        transition: transform 0.5s ease-in-out;
    }   
    .card-img-wrapper {
        height: 20.5vh !important;
        width: auto;
        overflow-y: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 8px;
        cursor: pointer !important;
        box-sizing: border-box;
    }
    .card-image img{
        object-fit: cover;
        object-position: center;
        width: 100%; /* Ensure the image doesn't exceed the container width */
        height: 100%; /* Ensure the image doesn't exceed the container height */
    }
    .icon-container {
        display: inline-block;
        position: relative;
        height: 38vh;
    }

    .icon-style{
        transition: transform 0.3s ease-in-out;
    }

    .margin-top-class{
        margin-top: 5rem !
    }

    .circle-fixed {
        border-radius: 50%;
        background-color: #efefef !important;
        width: 150px; /* Set your desired width */
        height: 150px; /* Set your desired height */
        overflow: hidden; /* To ensure the content doesn't overflow the circle */
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .circle-fixed img {
        width: 100%;
        height: auto;
        border-radius: 50%;
    }


    .icon-container:hover .icon-style{
        transform: scale(1.2);
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.208);
        color: rgb(0, 85, 255) !important; /* You can adjust the scale factor as needed */
    }
    .selected-product {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        cursor: pointer;
    }
    .custom-scrollbar::-webkit-scrollbar {
        width:auto;
        height: 6px;
    }
    .custom-scrollbar::-webkit-scrollbar-thumb {
        background-color: #007bff49;
        border-radius: 2px;
    }

    .custom-scrollbar::-webkit-scrollbar-thumb:hover {
        background-color: #007bff;
    }

    .custom-scrollbar::-webkit-scrollbar-track {
        background-color: #84848422;
    }

    .slick-slide img {
        padding-right: 12px !important;
    }
    .custom-card-shadow{
        box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.367);
        border-radius: 15px !important;
        cursor: pointer;
    }
    .apple-custom-style{
        transition: transform 0.6s, color 0.5s;
        color: black;
    }
    .apple-custom-style:hover{
        box-shadow: rgb(0, 0, 0) 2.4px 2.4px 3.2px;
        color: #007bff !important;
        transform: scale(1.2);
    }
    .product-card{
        height:100% !important;
        width: auto;
        overflow-y: hidden;
    }
    .product-card-body{
        max-height: 20vh;
        width: auto;
        overflow-y: hidden;
        overflow-x: hidden;
        display: -webkit-box;
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;

    }
    .product-image{
        max-height: 20vh;
        max-width: 100%;
        object-fit: cover;
        min-height: max-content;
    }
    .content {
        width: 100%;
    }

    /* .footer-product-card{
        position: relative;
        bottom: -36px;
    } */
    .dropdown-toggle::after {
        display: none;
    }
    @media (max-width: 991px) {

        body .page.ttm-sidebar-true .site-main,
        section {
            padding: 35px 0 !important;
        }

        #scrollUp {
            bottom: 7rem;
        }
    }
   
    @media (max-width: 650px) {

        body .page.ttm-sidebar-true .site-main,
        section {
            padding: 30px 0 !important;
        }

        .hero-section .hero-slider .signle-slide {
            height: 200px;
        }

        .slick-slide img {
            height: 150px !important;
            object-fit: contain !important;
            margin-top: -1rem !important;
        }

        .slider-sub-title {
            margin: 0;
        }
    }
    @media (max-width: 500px) {

        body .page.ttm-sidebar-true .site-main,
        section {
            padding: 20px 0 !important;
        }

        #logo-img {
            /* margin-top: 1.5rem !important; */
        }

        .header_main {
            padding: 0;
        }

        .fixed-bottom .row .col-2 a:hover {
            color: #f30;
        }

        .zamin-logo {
            position: relative;
        }

        .hero-section .hero-slider .signle-slide {
            height: 150px;
        }
    }

    

   

</style>

<body>
    <!--page start-->
    <div class="page">
        <!--header start-->
        <header id="masthead" class="header ttm-header-style-01">
            <!-- top_bar -->

            <!-- top_bar end-->
            <!-- header_main -->
            <div class="header_main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-sm-2 col-2 order-1 d-flex justify-content-center align-items-center d-flex zamin-logo">
                            <!-- site-branding -->
                            <div class="site-branding" style="margin: auto; padding: 0">
                                <a class="home-link" href="http://tooltitans.co.uk" title="" rel="home">
                                    <img id="logo-img" class="img-center" src="uploads/images/logo.png" alt="logo-img" style="min-width: 5rem;" />
                                </a>
                            </div>
                            <!-- site-branding end -->
                        </div>
                        <div class="col-lg-4 col-9 order-lg-2 order-2 text-lg-left text-right d-flex justify-content-center" style="max-width: 65%;">
                            <div class="header_search">
                                <!-- header_search -->
                                <div class="header_search_content">
                                    <div id="search_block_top" class="search_block_top">
                                        <form action="{{ route('category.search') }}" id="searchbox" method="get">
                                            <input type="hidden" name="_token" value="cBQprWGY74FKAwlvLzTgbWqBuBQe018glxuQ1vHa" />
                                            <input class="search_query form-control" type="text" id="search_query_top" name="search" placeholder="Search For Shopping...." value="" required style="width: calc(100% - 40px);" />

                                            <button type="submit" name="submit_search" class="btn btn-default button-search">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- header_search end -->
                        </div>
                        <div class="col-1 order-lg-4 order-3 text-lg-left text-right lg-none heart">
                            <div class="cart_icon"><i class="fa fa-heart-o" style='margin-top: 0.6rem;'></i></div>
                        </div>
                        <div class="col-lg-6 col-6 order-lg-4 order-3 text-lg-left text-right sm-none">
                            <!-- header_extra -->
                            <div class="header_extra d-flex flex-row align-items-center justify-content-end">
                                <ul class="d-flex justify-content-center align-items-center">
                                    @if (Auth::user())
                                    <li class="d-flex align-items-center justify-content-center" style="margin-right: 10px; color: black;">

                                        <img src="{{ file_exists(AdminProfilePicture() . Auth::user()->image) ? (isset(Auth::user()->image) ? asset(AdminProfilePicture() . Auth::user()->image) : Avatar::create(Auth::user()->name)->toBase64()) : Auth::user()->image }}" alt="{{ $allsettings['app_title'] }}" width="40px">

                                        <div class="dropdown">
                                            <button class="btn btn-secondary bg-transparent  border-0 dropdown-toggle mt-3" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="box-shadow: none !important;">
                                                <a href="#" class="account-txt" style="font-size: 1.3rem; margin-top: 1rem; font-weight: 400;">{{ Auth::user()->name }} <i class="fa fa-caret-down"></i></a>
                                            </button>
                                            <ul class="dropdown-menu account-list" style="font-size: 1.4rem;">
                                                @if (Auth::user()->is_admin == ACTIVE)
                                                <li class="single-lang dropdown-item"><a class="lang-text" href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                                                </li>
                                                @else
                                                <li class="single-lang dropdown-item"><a class="lang-text" href="{{ route('user.profile') }}">{{ __('Profile') }}</a>
                                                </li>
                                                @endif
                                                <li class="single-lang dropdown-item"><a class="lang-text" href="{{ route('user.logout') }}">{{ __('Logout') }}</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!-- <ul class="account-list">
                                            @if (Auth::user()->is_admin == ACTIVE)
                                            <li class="single-lang"><a class="lang-text" href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                                            </li>
                                            @else
                                            <li class="single-lang"><a class="lang-text" href="{{ route('user.profile') }}">{{ __('Profile') }}</a>
                                            </li>
                                            @endif
                                            <li class="single-lang"><a class="lang-text" href="{{ route('user.logout') }}">{{ __('Logout') }}</a>
                                            </li>
                                        </ul> -->
                                    </li>
                                    @else
                                    <li style="margin-right: 10px; color: black">
                                        <i class="fa fa-user-circle-o fa-2x" aria-hidden="true"></i>
                                        <a href="{{ route('login') }}" class="account-txt" style="white-space: nowrap;">My Account</a>
                                    </li>
                                    @endif
                                    <li style="margin-right: 10px; color: black; white-space: nowrap;">
                                        <i class="fa fa-plus-square fa-2x" aria-hidden="true"></i>
                                        <a href="{{url('/seller/login')}}" class="account-txt" style="white-space: nowrap;">Become a seller</a>
                                    </li>
                                </ul>
                                <div class="dropdown">
                                    <div class="dropdown_link d-flex flex-row align-items-center justify-content-end" data-toggle="dropdown" style="white-space: nowrap;">
                                        <a data-bs-toggle="offcanvas" href="#cartOffcanvasSidebar" role="button" aria-controls="cartOffcanvasSidebar" class="cart-btn header-btn">
                                            <div class="cart_icon">
                                                <i class="fa fa-shopping-cart"></i>
                                                <div class="cart_count">{{ cartCountItem() }}</div>
                                            </div>
                                            <div class="cart_content" style="white-space: nowrap;">
                                                <div class="cart_text">
                                                    @php
                                                    $content = Cart::content();
                                                    $total = 0;
                                                    @endphp
                                                    @foreach ($content as $item)
                                                    @php
                                                    $total += $item->subtotal;
                                                    @endphp
                                                    @endforeach
                                                    <a href="cart">
                                                        Total {{ currencyConverter($total) }}
                                                    </a>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="cart dropdown">
                                    <div class="dropdown_link d-flex flex-row align-items-center justify-content-end" data-toggle="dropdown">
                                        <div class="cart_icon">
                                            <i class="fa fa-heart-o"></i>
                                            <div class="cart_count">{{ auth()->check() ? wishlistCount() : '0' }}</div>
                                        </div>
                                        <div class="cart_content">
                                            <div class="cart_text">
                                                <a href="cart" style="white-space: nowrap;">Wishlist
                                                    item {{ auth()->check() ? wishlistCount() : '0' }}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- header_extra end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- haeder-main end -->
            
        </header>
        <div class="container-fluid mb-3">
            <div class="row no-gutters">
                @php
                $uniqueBrands = [];
                @endphp
            
                @foreach($data as $device)
                    @php
                        $brandName = $device['brand']['en_BrandName'];
                        if (!in_array($brandName, $uniqueBrands)) {
                            $uniqueBrands[] = $brandName;
                        }
                    @endphp
                @endforeach
                @foreach($uniqueBrands as $brandName)
                    <div class="col-12 border-bottom mb-3 border-secondary"> 
                        <h3 class="mb-0">{{ $brandName }}</h3>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            @foreach($data as $device)
                                @if($device['brand']['en_BrandName'] == $brandName)
                                    <div class="p-2 col-xs-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 col-xxl-2">
                                        <div class="p-1 custom-card-shadow bg-white product-card">
                                            <a class=" product-card-body" href="{{ route('seller.product', $device['id']) }}">
                                                <img class="product-image" src="{{ asset($device['image']) }}" alt="{{ $device['model'] }}">
                                            </a>
                                            <div class="text-center pt-4">
                                                <h6 class="mb-0 text-truncate">
                                                    <strong>{{ $device['model'] }}</strong>
                                                </h6>
                                                <p class="mb-0">Price: {{ number_format($device['price'], 2) }}</p>
                                                <p class="mb-0">Color: {{ $device['color'] }}</p>
                                                <p class="mb-0">Storage: {{ $device['storage'] }}</p>
                                                <p class="mb-0  text-truncate">Location: {{ $device['city'] }}</p>
                                            </div>
                                            <div class="mb-0 d-flex justify-content-between border-top border-secondary pt-2 px-3 footer-product-card">
                                                <div class="product-btn">
                                                    <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{ $device['id'] }}" href="#">
                                                        <i class="fa fa-shopping-cart fa-lg"></i>
                                                    </a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="{{ route('seller.product', $device['id']) }}" productId="{{ $device['id'] }}" style="z-index: 9999 !important;">
                                                        <i class="fa fa-search fa-lg"></i>
                                                    </a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="https://wa.me/+923282966204?text=<?php echo urlencode(
                                                        'Product Details: ' .
                                                        ($device['brand']['en_BrandName'] ? $device['brand']['en_BrandName'] : '') .
                                                        ' ' .
                                                        ($device['model'] ? $device['model'] : '') .
                                                        ', Color: ' .
                                                        ($device['color'] ? $device['color'] : '') .
                                                        ', Storage: ' .
                                                        ($device['storage'] ? $device['storage'] : '') .
                                                        ', City: ' .
                                                        ($device['city'] ? $device['city'] : '') .
                                                        ', Price: Rs ' .
                                                        ($device['price'] ? $device['price'] : '')
                                                    ); ?>" target="_blank">
                                                        <i class='fa fa-whatsapp fa-lg'></i>
                                                    </a>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                @endif
                            @endforeach

                        </div>
                    </div>
                @endforeach
            </div>
            
        </div>
    </div>
    <!-- Javascript -->
    <script src="site/js/jquery.min.js"></script>
    <script src="site/js/jquery.easing.js"></script>
    <!-- Revolution Slider -->
    <script src="site/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script src="site/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script src="site/revolution/js/slider.js"></script>
    <script src="site/js/tether.min.js"></script>

    <script src="site/js/bootstrap.min.js"></script>
    <script src="site/js/bootstrap.min.js"></script>
    <script src="site/js/jquery.easing.js"></script>
    <script src="site/js/jquery-waypoints.js"></script>
    <script src="site/js/jquery-validate.js"></script>
    <script src="site/js/numinate.min.js"></script>
    <script src="site/js/numinate.min.js"></script>
    <script src="site/js/slick.js"></script>
    <script src="site/js/jquery.magnific-popup.min.js"></script>
    <script src="site/js/price_range_script.js"></script>
    <script src="site/js/easyzoom.js"></script>
    <script src="site/js/main.js"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>


    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->

    <script src="site/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="site/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script src="site/js/map.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>

    <!-- Javascript end-->

    <script>
        let show = 5;

        console.log(window.innerWidth)

        if (window.innerWidth <= 1000) {
            show = 4
        }
        if (window.innerWidth <= 800) {
            show = 4
        }
        if (window.innerWidth <= 600) {
            show = 3
        }
        if (window.innerWidth <= 500) {
            show = 2
        }

        const carousel_control_prev = document.querySelector('.carousel-control-prev');
        const carousel_control_next = document.querySelector('.carousel-control-next');
        const slick_track = document.getElementsByClassName('slick-track');
        const slick_slide00 = document.getElementsByClassName('single-slide');
        const sm_none = document.getElementsByClassName('sm-none');

        // console.log(-window.innerWidth + 30);
        console.log(sm_none[1].offsetWidth);


        if (window.innerWidth > 992) {

            let wind = (-sm_none[1].offsetWidth + 15) * 2;

            let translate = wind;
            console.log(translate);
            carousel_control_next.addEventListener('click', () => {
                translate -= -wind;
                if (translate < wind * 3) {
                    translate = wind;
                }
                console.log(translate);
                slick_track[0].style.transition = `transform 500ms`
                slick_track[0].style.transform = `translate3d(${translate}px, 0, 0)`
            })

            carousel_control_prev.addEventListener('click', () => {
                translate -= wind;
                if (translate > 0) {
                    translate = wind * 3;
                }
                // console.log(translate);
                slick_track[0].style.transition = `transform 500ms`
                slick_track[0].style.transform = `translate3d(${translate}px, 0, 0)`
            })

        } else {
            let wind = -window.innerWidth + 30;

            let translate = wind;
            // console.log(translate);
            carousel_control_next.addEventListener('click', () => {
                translate -= -wind;
                if (translate < wind * 3) {
                    translate = wind;
                }
                // console.log(translate);
                slick_track[0].style.transition = `transform 500ms`
                slick_track[0].style.transform = `translate3d(${translate}px, 0, 0)`
            })

            carousel_control_prev.addEventListener('click', () => {
                translate -= wind;
                if (translate > 0) {
                    translate = wind;
                }
                // console.log(translate);
                slick_track[0].style.transition = `transform 500ms`
                slick_track[0].style.transform = `translate3d(${translate}px, 0, 0)`
            })
        }



        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: show,
            slidesToScroll: 1,
            asNavFor: '.slider-for',
            dots: false,
            // focusOnSelect: true
        });

        $('a[data-slide]').click(function(e) {
            e.preventDefault();
            var slideno = $(this).data('slide');
            $('.slider-nav').slick('slickGoTo', slideno - 1);
        });

        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": false,
            "progressBar": false,
            "positionClass": "toast-bottom-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };
        // @if(Session::has('success'))
        // toastr.success("{{ session('success') }}");
        // @endif
        // @if(Session::has('error'))
        // toastr.error("{{ session('error') }}");
        // @endif
        // @if(Session::has('info'))
        // toastr.info("{{ session('info') }}");
        // @endif
        // @if(Session::has('warning'))
        // toastr.warning("{{ session('warning') }}");
        // @endif
    </script>
    <script>
        $.ajaxSetup({
            headers: {
                "X-CSRF-Token": "cBQprWGY74FKAwlvLzTgbWqBuBQe018glxuQ1vHa",
            },
        });
        $(document).ready(function() {
            $(document).on("click", ".quick-view-btn", function(e) {
                e.preventDefault();
                let productId = $(this).attr("productId");
                $.ajax({
                    url: "quick/view",
                    type: "POST",
                    dataType: "JSON",
                    data: {
                        product_id: productId,
                    },
                    success: function(res) {
                        console.log(res);
                        $(".quick_view_model").html("");
                        $(".quick_view_model").html(res.html);
                    },
                    error: function(data) {
                        console.log(data);
                    },
                });
            });

            $(document).on("click", ".inc", function() {
                let qty = $(".qty").val();
                qty = parseInt(qty) + 1;
                $(".qty").val(qty);
            });
            $(document).on("click", ".dec", function() {
                let qty = $(".qty").val();
                if (qty > 0) {
                    qty = parseInt(qty) - 1;
                    $(".qty").val(qty);
                } else {
                    $(".qty").val(0);
                }
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            $(document).on("click", ".addToCartButton", function(e) {
                e.preventDefault();
                let href_attr = $(this).attr("href");
                let qty = $(".qty").val();
                $(".addCartForm").submit();
            });
        });
    </script>
</body>

</html>