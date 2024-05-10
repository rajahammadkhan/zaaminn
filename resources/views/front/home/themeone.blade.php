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
@include('front.layouts.include.cart_sidebar_menu')


<style>
    .main {
        font-family: Arial;
        width: 500px;
        display: block;
        margin: 0 auto;
        width: 95%;
    }

    h3 {
        /* background: #fff; */
        color: #19256E;
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
        // padding: 30px 0;
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

    .slide-card-shadow {
        box-shadow: 2px 3px 6px rgba(0, 0, 0, 0.367);
        display: flex;
        flex-direction: column;
        width: 100%;
        border-radius: 15px !important;
    }

    .responsive-text {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .card-img-wrapper {
        width: 100%;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 8px;
        cursor: pointer !important;
        box-sizing: border-box;
        height: 38vh;
    }

    .card-image img {
        object-fit: cover;
        object-position: center;
        width: 100%;
        /* Ensure the image doesn't exceed the container width */
        height: 100%;
        /* Ensure the image doesn't exceed the container height */
        height: 35vh;
    }

    .icon-container-seller {
        display: inline-block;
        position: relative;
        width: 100% position: relative;
        height: 100%;

    }

    .icon-style {
        transition: transform 0.3s ease-in-out;
    }

    .margin-top-class {
        margin-top: 5rem !important;
    }

    .circle-fixed {
        border-radius: 50%;
        background-color: #efefef !important;
        width: 150px;
        /* Set your desired width */
        height: 150px;
        /* Set your desired height */
        overflow: hidden;
        /* To ensure the content doesn't overflow the circle */
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .circle-fixed-static {
        border-radius: 50%;
        width: 150px;
        /* Set your desired width */
        height: 150px;
        /* Set your desired height */
        overflow: hidden;
        /* To ensure the content doesn't overflow the circle */
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .image-div-size {
        width: 100%;
    }

    .circle-fixed img {
        width: 100%;
        height: auto;
        border-radius: 50%;
    }

    .icon-container:hover .icon-style {
        transform: scale(1.2);
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.208);
        color: #19256E !important;
        /* You can adjust the scale factor as needed */
    }

    .selected-product {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        cursor: pointer;
    }

    .custom-scrollbar::-webkit-scrollbar {
        width: auto;
        height: 6px;
    }

    .custom-scrollbar::-webkit-scrollbar-thumb {
        background-color: #19256E;
        border-radius: 2px;
    }

    .custom-scrollbar::-webkit-scrollbar-thumb:hover {
        background-color: #19256E;
    }

    .custom-scrollbar::-webkit-scrollbar-track {
        background-color: #19256E;
    }

    .slick-slide img {
        padding-right: 12px !important;
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

        .responsive-text {
            font-size: 20px !important
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

    .dropdown-toggle::after {
        display: none;
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
            <!-- site-header-menu -->
            <div id="site-header-menu" class="site-header-menu ttm-bgcolor-white clearfix">
                <div class="site-header-menu-inner stickable-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main_nav_content d-flex flex-row">
                                    <div class="cat_menu_container">
                                        <a href="#" class="cat_menu d-flex flex-row align-items-center">
                                            <div class="cat_icon">
                                                <i class="fa fa-bars" style="color: black"></i>
                                            </div>
                                            <div class="cat_text">
                                                <h6 class="pt-4">Categories</h6>
                                            </div>
                                        </a>
                                        <ul class="cat_menu_list menu-vertical">
                                            <li>
                                                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                                            </li>
                                            @foreach (categoryWithBrands() as $item)
                                            <li class="parent">
                                                <a href="{{ route('category.product', $item->id) }}">{{ langConverter($item->en_Category_Name, $item->fr_Category_Name) }}
                                                    <i class="fa fa-angle-right float-right" aria-hidden="true"></i></a>
                                                <div class="sub-menu megamenu column3">
                                                    <ul class="list-unstyled childs_1">
                                                        @foreach ($item->brands as $item)
                                                        <li class="title">
                                                            <a href="{{ route('brand.product', $item->id) }}">{{ $item->en_BrandName ? langConverter($item->en_BrandName, $item->fr_BrandName) : '' }}</a>
                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    <!--site-navigation -->
                                    <div id="site-navigation" class="site-navigation">
                                        <div class="btn-show-menu-mobile menubar menubar--squeeze">
                                            <span class="menubar-box">
                                                <span class="menubar-inner"></span>
                                            </span>
                                        </div>
                                        <!-- menu -->
                                        <nav class="menu menu-mobile" id="menu">
                                            <ul class="nav">
                                                @foreach (Category() as $item)
                                                <li>
                                                    <a href="{{ route('category.product', $item->id) }}">{{ langConverter($item->en_Category_Name, $item->fr_Category_Name) }}</a>
                                                </li>
                                                @endforeach
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- site-header-menu end -->
        </header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <!-- <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul> -->

                        <!-- The slideshow -->
                        <!-- hero-section area start here  -->
                        <div class="hero-section">
                            <div class="hero-slider">
                                @foreach ($sliders as $slider)
                                <div class="signle-slide" style="background-image: url('{{ asset(SliderImage() . $slider->Background_Image) }}');">
                                    <div class="container-fluid">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6 col-6">
                                                <div class="hero-slider-content text-center">
                                                    <h2 class="slider-sub-title">
                                                        {{ langConverter($slider->en_Sub_Title, $slider->fr_Sub_Title) }}
                                                    </h2>
                                                    <h1 class="slider-title">
                                                        {{ langConverter($slider->en_Title, $slider->fr_Title) }}
                                                    </h1>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 offset-lg-1 col-6">
                                                <div class="hero-slider-image text-center">
                                                    <img class="hero-image img-fluid" src="{{ asset(SliderImage() . $slider->Thumbnail) }}" alt="hero-banner-image" style="height: 300px;object-fit: contain;margin-top: 2rem;" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- hero-section area end here  -->

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 sm-none">
                    <img src="https://f.nooncdn.com/mpcms/EN0001/assets/43823755-3c76-4c43-80bd-efe798857796.png" width="100%" height="330" />
                </div>
            </div>
        </div>

        <section class="testimonial-section clearfix ">
            <div class="row-wrapper-bg-layer ttm-bg-layer"></div>
            @php
                $test_cats = [
                    'airbuds' => 'Airbuds',
                    'cable' => 'Cable',
                    'charger' => 'Charger',
                    'cover' => 'Cover',
                    'mobile_holder' => 'Mobile Holder',
                    'power_bank' => 'Power Bank',
                    'smart_watch' => 'Smart Watch',
                    'speakers' => 'Speakers'
        ];
            @endphp
            <!-- row -->
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-xs-12">
                    <div class="slick_slider1"
                        data-slick='{"slidesToShow": 8, "slidesToScroll": 1, "arrows":false, "autoplay":true, "centerMode":true, "centerPadding":0, "infinite":true, "initialSlide":0}'>
                        <!-- testimonials -->
                        @foreach ($test_cats as $tc => $test_cat)
                        <a href="{{ route('all.product') }}">
                            <div class="testimonials ttm-testimonial-box-view-style1 custom-slick-css">
                                <div class="testimonial-content">
                                    <img class="img-center circle-fixed-static"
                                        src="{{ asset('uploaded_files/front_page_images/' . $tc . '.jpeg') }}"
                                        alt="testimonial-img" />
                                </div>
                                <div class="cat_label pt-4">
                                    <h6 class="text-center">{{ $test_cat }}</h6>
                                </div>
                            </div>
                        </a>
                        @endforeach
                        <!-- testimonials end -->
                    </div>
                    
                    <!-- slick_slider -->
                    <div class="slick_slider1 d-none"
                        data-slick='{"slidesToShow": 8, "slidesToScroll": 1, "arrows":false, "autoplay":true, "centerMode":true, "centerPadding":0, "infinite":true, "initialSlide":0}'>
                        <!-- testimonials -->
                        @foreach ($categories as $tc)
                        <a href="{{ route('category.product',$tc->id) }}">
                            <div class="testimonials ttm-testimonial-box-view-style1 custom-slick-css">
                                <div class="testimonial-content">
                                    <img class="img-center circle-fixed-static" src="{{ asset($tc->category_image) }}"
                                        alt="testimonial-img"
                                        onerror="this.src='https://via.placeholder.com/150?text={{ $tc->en_Category_Name }}'" />
                                </div>
                                <div class="cat_label pt-4">
                                    <h6 class="text-center">{{ $tc->en_Category_Name }}</h6>
                                </div>
                            </div>
                        </a>
                        @endforeach
                        <!-- testimonials end -->
                    </div>
                    <!-- testimonial-slide end-->
                </div>
            </div>
            <!-- row end-->
        </section>

        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <h3 class="ml-0 pl-4">Shop Mobile by brands</h3>
                <div class="row-wrapper-bg-layer ttm-bg-layer"></div>

                <!-- row -->
                <div class="row text-center">
                    <div class="col-lg-12 col-sm-12 col-xs-12">
                        <!-- slick_slider -->
                        <div class="slick_slider1" data-slick='{"slidesToShow": 8, "slidesToScroll": 1, "arrows":false, "autoplay":true, "centerMode":true, "centerPadding":0, "infinite":true, "initialSlide":0}'>
                            <!-- testimonials -->
                            @foreach ($brands as $brand)
                            <div class="testimonials ttm-testimonial-box-view-style1">
                                <div class="testimonial-content circle-fixed">
                                    <img class="img-center img-center1" src="{{ asset(BrandImage() . $brand->BrandImage) }}" alt="brad image" max-width="150px" max-height="150px" />
                                    <h6>{{ $item->en_BrandName ? langConverter($item->en_BrandName, $item->fr_BrandName) : '' }}</h6>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
        </section>

        <img src="https://zaaminn.com/uploaded_files/promotion/65283530886661697133872.png" height="330px" width="100%" class="mb-20" style="height: 500px;object-fit: cover;width: 100%;padding-top: 3rem;" />
         <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer text-center">
                    <h3 class="text-dark">Seller Products</h3>
                </div>
                <div class="row to_controll">
                    <div class="main">
                        <div class="overflow-container py-4">
                            <div class="content px-4 mb-2 overflow-content text-center row">
                            @php
                                $productCount = 0;
                            @endphp
                                @foreach($seller_products as $products_vivo)
                                    @if($productCount < 18)
                                    <div class="margin-top-class m-0 px-4 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="border-0 rounded  slide-card-shadow icon-container-seller custom-width">
                                            <div class="card-img-wrapper">
                                                <a class="" href="{{ route('seller.product',$products_vivo->id) }}">
                                                    <img class="card-image" src="{{ asset( $products_vivo->image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                                </a>
                                            </div>
                                            <div class="p-2 recommended-text-scale text-center text-dark ">
                                                <h6 class="text-center pl-2 mb-0 text-capitalize responsive-text" style="line-height: 1.5;">
                                                    {{ ($products_vivo->brand->en_BrandName ? $products_vivo->brand->en_BrandName : '') .' '. (strlen($products_vivo->model) > 20 ? substr($products_vivo->model, 0, 20) . '...' : $products_vivo->model) }}
                                                </h6>
                                                <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$products_vivo->color}}</p>
                                                <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$products_vivo->storage}}</p>
                                                <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$products_vivo->city}}</p>
                                                <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                                    <div class="col-12 text-center">
                                                        <h6 class="selected-product font-weight-bold text-success mb-0" style="line-height: 1.5;">Rs {{$products_vivo->price}}</h6>
                                                    </div>
                                                    {{-- <div class="col-2 text-center pl-0">
                                                        <a href="https://wa.me/+923282966204?text=<?php echo urlencode(
                                                            'Product Details: ' .
                                                            ($products_vivo->brand->en_BrandName ? $products_vivo->brand->en_BrandName : '') .
                                                            ' ' .
                                                            ($products_vivo->model ? $products_vivo->model : '') .
                                                            ', Color: ' .
                                                            ($products_vivo->color ? $products_vivo->color : '') .
                                                            ', Storage: ' .
                                                            ($products_vivo->storage ? $products_vivo->storage : '') .
                                                            ', City: ' .
                                                            ($products_vivo->city ? $products_vivo->city : '') .
                                                            ', Price: Rs ' .
                                                            ($products_vivo->price ? $products_vivo->price : '')
                                                        ); ?>" target="_blank">
                                                            <i class='fa fa-whatsapp'></i>
                                                        </a>
                                                    </div> --}}

                                                    {{-- <div class="product-btn">
                                                        <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{$products_vivo->id}}" href="#">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </a>
                                                    </div>
                                                    <div class="product-btn">
                                                        <a href="{{ route('seller.product',$products_vivo->id) }}" productId="{{ $products_vivo->id }}" style="z-index: 9999 !important;">
                                                            <i class="fa fa-search"></i>
                                                        </a>
                                                    </div> --}}
                                                    {{-- <div class="product-btn">

                                                    </div> --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @php
                                        $productCount++;
                                    @endphp
                                    @else
                                        @break
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                    @if(count($seller_products) > 18)
                        <div class="text-center" style="z-index: 9;">
                            <a href="{{ url('/product/brand') }}">See All</a>
                        </div>
                    @endif
                </div>
            </div>
        </section>

        <h1 class="text-center text-warning">Managed by Zaaminn</h1>
        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer d-none">
                    <h3>IPhones</h3>
                </div>
                <!-- row -->
                <div class="row to_controll">
                    <div class="main">
                        <div class="overflow-container py-4 custom-scrollbar">
                            <div class="content row mb-2 jsutify-content-center text-center">
                                @php
                                    $productCount = 0;
                                @endphp
                                @foreach($brands_products as $products_vivo)
                                @if($productCount < 6)
                                <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                        <div class="card-img-wrapper">
                                            <a class="" href="{{ route('single.product',$products_vivo->en_Product_Slug) }}">
                                                <img class="card-image" src="{{ asset(ProductImage() . $products_vivo->Primary_Image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                            </a>
                                        </div>
                                        <div class="p-2 recommended-text-scale text-center text-dark pt-4">
                                            <h6 class="text-capitalize responsive-text"> {{ ($products_vivo->en_Product_Name ? $products_vivo->en_Product_Name : '') .' '. (strlen($products_vivo->model) > 20 ? substr($products_vivo->model, 0, 20) . '...' : $products_vivo->model) }}<br> </h6>
                                            {{-- <h6> {!! (strlen($products_vivo->en_Description) > 20) ? substr($products_vivo->en_Description, 0, 20) . '...' : $products_vivo->en_Description !!}<br> </h6> --}}
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$products_vivo->color}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$products_vivo->storage}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$products_vivo->city}}</p>
                                            <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                                <div class="col-10 text-center pl-4">
                                                    <h6 class="mt-5 text-center selected-product">Rs. {{$products_vivo->Price}}</h6>
                                                </div>
                                                <div class="col-2 pl-0">
                                                    <div class="product-btn">
                                                        <a href="#" class="product-btn MyWishList wishlist-btn tooltip-top" data-id="{{ $products_vivo->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    @php
                                        $productCount++;
                                    @endphp
                                    @else
                                        @break
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                    @if(count($brands_products) > 6)
                        <div class="text-center" style="z-index: 9;">
                            <a href="{{ route('brand.product', $brands_products[0]->Brand_Id) }}">See All</a>
                        </div>
                    @endif
                    <!-- </div> -->
                    <!-- row end-->
                </div>
            </div>
        </section>

        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer d-none">
                    <h3>Samsung</h3>
                </div>
                <!-- row -->
                <div class="row to_controll">
                    <!-- <div class="to_controll"> -->
                    <div class="main">
                        <div class="slider slider-for">
                        </div>
                        <div class="overflow-container py-4 custom-scrollbar">
                            <div class="content row px-4 mb-2 overflow-content custom-scrollbar justify-content-center text-center">
                                @php
                                    $productCount = 0;
                                @endphp
                                @foreach($brands_products_samsung as $product_samsung)
                                @if($productCount < 6)
                                <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                        <div class="card-img-wrapper">
                                            <a class="" href="{{ route('single.product',$product_samsung->en_Product_Slug) }}">
                                                <img class="card-image pro-image-front" src="{{ asset(ProductImage() . $product_samsung->Primary_Image) }}" alt="testimonial-img" height="160px" />
                                            </a>
                                        </div>
                                        <div class="p-2 recommended-text-scale text-center text-dark ">
                                          <h6 class="text-capitalize responsive-text"> {{ ($product_samsung->en_Product_Name ? $product_samsung->en_Product_Name : '') .' '. (strlen($product_samsung->model) > 20 ? substr($product_samsung->model, 0, 20) . '...' : $product_samsung->model) }}<br> </h6>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$product_samsung->color}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$product_samsung->storage}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$product_samsung->city}}</p>
                                            <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                                <div class="col-10 text-center pl-4">
                                                    <h6 class="mt-5 text-center selected-product">{{$product_samsung->Price}}</h6>
                                                </div>
                                                <div class="col-2 pl-0">
                                                        <a href="#" data-id="{{ $product_samsung->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                                    {{-- <div class="product-btn">
                                                    </div> --}}
                                                </div>
                                                {{-- <div class="product-btn">
                                                    <a title="{{__('Add to cart')}}" href="#" data-id="{{$product_samsung->id}}"><i class="fa fa-shopping-cart"></i></a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="{{ route('single.product',$product_samsung->en_Product_Slug) }}" productId="{{ $product_samsung->id }}"><i class="fa fa-search"></i></a>
                                                </div> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    @php
                                        $productCount++;
                                    @endphp
                                    @else
                                        @break
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        <input type="hidden" name="quantity" value="1" id="product_quantity">
                    </div>
                    @if(count($brands_products_samsung) > 6)
                        <div class="text-center" style="z-index: 9;">
                            <a href="{{ route('brand.product', $brands_products_samsung[0]->Brand_Id) }}">See All</a>
                        </div>
                    @endif
                </div>
                <!-- row end-->
            </div>
        </section>
        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer d-none">
                    <h3>Vivo</h3>
                </div>

                <!-- row -->
                <div class="row to_controll">
                    <!-- <div class="to_controll"> -->
                    <div class="main">
                        <div class="slider slider-for">
                        </div>
                        <div class="overflow-container py-4 custom-scrollbar">
                            <div class="content row px-4 mb-2 overflow-content custom-scrollbar justify-content-center text-center">
                                @foreach($brands_products_vivo as $key => $products_vivo)
                                @if($key < 6)
                                <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                        <div class="card-img-wrapper">
                                            <a class="" href="{{ route('single.product',$products_vivo->en_Product_Slug) }}">
                                                <img class="card-image pro-image-front" src="{{ asset(ProductImage() . $products_vivo->Primary_Image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                            </a>
                                        </div>
                                        <div class="p-2 recommended-text-scale text-center text-dark ">
                                            <h6 class="text-capitalize responsive-text"> {{ ($products_vivo->en_Product_Name ? $products_vivo->en_Product_Name : '') .' '. (strlen($products_vivo->model) > 20 ? substr($products_vivo->model, 0, 20) . '...' : $products_vivo->model) }}<br> </h6>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$products_vivo->color}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$products_vivo->storage}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$products_vivo->city}}</p>
                                            <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                                <div class="col-10 text-center pl-4">
                                                    <h6 class="mt-5 text-center selected-product">{{$products_vivo->Price}}</h6>
                                                </div>
                                                <div class="col-2 pl-0">
                                                        <a href="#" class="product-btn MyWishList wishlist-btn tooltip-top" data-id="{{ $products_vivo->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                                    {{-- <div class="product-btn">
                                                    </div> --}}
                                                </div>
                                                {{-- <div class="product-btn">
                                                    <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{$products_vivo->id}}">
                                                        <i class="fa fa-shopping-cart"></i></a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="{{ route('single.product',$products_vivo->en_Product_Slug) }}" productId="{{ $products_vivo->id }}" style="z-index: 9999 !important;">
                                                        <i class="fa fa-search"></i>
                                                    </a>
                                                </div> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @else
                                    @break
                                @endif
                            @endforeach
                            </div>
                        </div>
                    </div>
                    @if(count($brands_products_vivo) > 6)
                        <div class="text-center" style="z-index: 9;">
                            <a href="{{ route('brand.product', $brands_products_vivo[0]->Brand_Id) }}">See All</a>
                        </div>
                    @endif
                </div>
                <!-- row end-->
            </div>
        </section>

        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer d-none">
                    <h3>OPPO</h3>
                </div>

                <!-- row -->
                <div class="row to_controll">
                    <div class="main">
                        <div class="slider slider-for">
                        </div>
                       <div class="overflow-container py-4 custom-scrollbar">
                            <div class="content row px-4 mb-2 overflow-content custom-scrollbar justify-content-center text-center">
                                @foreach($brands_products_oppo as $key => $products_oppo)
                                @if($key < 6)
                                <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                        <div class="card-img-wrapper">
                                            <a class="" href="{{ route('single.product',$products_oppo->en_Product_Slug) }}">
                                                <img class="card-image pro-image-front" src="{{ asset(ProductImage() . $products_oppo->Primary_Image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                            </a>
                                        </div>
                                        <div class="p-2 recommended-text-scale text-center text-dark ">
                                            <h6 class="text-capitalize responsive-text"> {{ ($products_oppo->en_Product_Name ? $products_oppo->en_Product_Name : '') .' '. (strlen($products_oppo->model) > 20 ? substr($products_oppo->model, 0, 20) . '...' : $products_vivo->model) }}<br> </h6>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$products_oppo->color}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$products_oppo->storage}}</p>
                                            <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$products_oppo->city}}</p>
                                            <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                                <div class="col-10 text-center pl-4">
                                                    <h6 class="mt-5 text-center selected-product">{{$products_oppo->Price}}</h6>
                                                </div>
                                                <div class="col-2 pl-0">
                                                        <a class="product-btn MyWishList wishlist-btn tooltip-top" data-id="{{ $products_oppo->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                                    {{-- <div class="product-btn">
                                                    </div> --}}
                                                </div>
                                                {{-- <div class="product-btn">
                                                    <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{$products_oppo->id}}">
                                                        <i class="fa fa-shopping-cart"></i></a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="{{ route('single.product',$products_oppo->en_Product_Slug) }}" productId="{{ $products_oppo->id }}">
                                                        <i class="fa fa-search"></i>
                                                    </a>
                                                </div> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @else
                                    @break
                                @endif
                            @endforeach
                            </div>
                        </div>
                    </div>
                     @if(count($brands_products_oppo) > 6)
                        <div class="text-center" style="z-index: 9;">
                            <a href="{{ route('brand.product', $brands_products_oppo[0]->Brand_Id) }}">See All</a>
                        </div>
                    @endif
                </div>
                <!-- row end-->
            </div>
        </section>

        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="row-wrapper-bg-layer ttm-bg-layer d-none">
                    <h3>Infinix</h3>
                </div>
                <div class="overflow-container py-4 custom-scrollbar">
                    <div class="text-center content row px-4 mb-2 overflow-content custom-scrollbar">
                        @foreach($brands_products_nokia as $key => $products_nokia)
                        @if($key < 6)
                        <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                <div class="card-img-wrapper">
                                    <a class="" href="{{ route('single.product',$products_nokia->en_Product_Slug) }}">
                                        <img class="card-image pro-image-front" src="{{ asset(ProductImage() . $products_nokia->Primary_Image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                    </a>
                                </div>
                                <div class="p-2 recommended-text-scale text-center text-dark ">
                                    <h6 class="text-capitalize responsive-text"> {{ ($products_nokia->en_Product_Name ? $products_nokia->en_Product_Name : '') .' '. (strlen($products_nokia->model) > 20 ? substr($products_nokia->model, 0, 20) . '...' : $products_vivo->model) }}<br> </h6>
                                    <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-palette pr-2 text-info"></i> {{$products_nokia->color}}</p>
                                    <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-sd-card pr-3"></i>{{$products_nokia->storage}}</p>
                                    <p class="text-left pl-2 mb-0 responsive-text" style="line-height: 1.5;"><i class="fas fa-map-marker-alt pr-3 text-danger"></i>{{$products_nokia->city}}</p>
                                    <div class="pl-2 mb-0 pt-4 border-secondary pt-2 row">
                                        <div class="col-10 text-center pl-4">
                                            <h6 class="mt-5 text-center selected-product">{{$products_nokia->Price}}</h6>
                                        </div>
                                        <div class="col-2 pl-0">
                                                <a class="product-btn MyWishList wishlist-btn tooltip-top" data-id="{{ $products_nokia->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                            {{-- <div class="product-btn">
                                            </div> --}}
                                        </div>
                                        {{-- <div class="product-btn">
                                            <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{$products_nokia->id}}">
                                                <i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                        <div class="product-btn">
                                            <a href="{{ route('single.product',$products_nokia->en_Product_Slug) }}" productId="{{ $products_oppo->id }}">
                                                <i class="fa fa-search"></i>
                                            </a>
                                        </div> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                        @else
                            @break
                        @endif
                        @endforeach
                    </div>
                </div>
            </div>
            @if(count($brands_products_nokia) > 6)
                <div class="text-center" style="z-index: 9;">
                    <a href="{{ route('brand.product', $brands_products_nokia[0]->Brand_Id) }}">See All</a>
                </div>
            @endif
        </section>
        @php
            $categories = ['accessories', 'smartWatch'];
        @endphp
        @foreach($categories as $category)
        <section class="testimonial-section clearfix responsive">
            <div class="container-fluid">
                <div class="overflow-container py-4 custom-scrollbar">
                    <div class="text-center content row px-4 mb-2 overflow-content custom-scrollbar">
                        <div class="text-left">
                            <h3 class="text-capitalize pb-0 pt-0">{{ preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords($category)) }}</h3>
                        </div>
                        @foreach($accessories as $key => $accessory)

                            @if($accessory->category == $category && $key < 6)
                            <div class=" m-0 p-3 card-style col-xl-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="border-0 rounded  slide-card-shadow icon-container custom-width">
                                    <div class="card-img-wrapper">
                                        <a class="" href="{{ route('seller.accessory', $accessory->id) }}">
                                            <img class="card-image pro-image-front" src="{{ asset($accessory->image) }}" alt="testimonial-img" width="100%" height="28rem !important" />
                                        </a>
                                    </div>
                                    <div class="p-2 recommended-text-scale text-center text-dark ">
                                        <h6> {!! (strlen($accessory->description) > 17) ? substr($accessory->description, 0, 17) . '...' : $accessory->description !!}<br> </h6>
                                        <div class="d-flex justify-content-around border-secondary py-2 row">
                                            <div class="col-10 pl-4">
                                                <h6 class="mt-5 text-center selected-product">{{$accessory->price}}</h6>
                                            </div>
                                            <div class="col-2 pl-0">
                                                {{-- <div class="product-btn">
                                                    <a title="{{__('Add to cart')}}" class="add-cart addCart" data-id="{{$accessory->id}}">
                                                        <i class="fa fa-shopping-cart"></i>
                                                    </a>
                                                </div>
                                                <div class="product-btn">
                                                    <a href="{{ route('seller.accessory', $accessory->id) }}" productId="{{ $accessory->id }}">
                                                        <i class="fa fa-search"></i>
                                                    </a>
                                                </div> --}}
                                                <div class="product-btn">
                                                    <a class="product-btn MyWishList wishlist-btn tooltip-top" data-id="{{ $accessory->id }}" title="{{ __('Add To Wishlist') }}"><i class="fa fa-heart"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        @endforeach
        <div class="container lg-none text-center fixed-bottom bg-white-1">
            <div class="row">
                <div class="col-1"></div>
                <div class="col-2">
                    <a href="#">
                        <i class="fa fa-home" aria-hidden="true"></i><br />
                    </a>
                </div>
                <div class="col-2">
                    <a href="#">
                        <i class="fa fa-globe" aria-hidden="true"></i><br />
                    </a>
                </div>
                <div class="col-2">
                    <ul class="d-flex justify-content-center align-items-center">
                        @if (Auth::user())
                        <li class="d-flex align-items-center justify-content-center" style="margin-right: 10px; color: black;">
                            <div class="dropdown">
                                <button class="btn btn-secondary bg-transparent  border-0 dropdown-toggle " type="button" data-bs-toggle="dropdown" aria-expanded="false" style="box-shadow: none !important;">
                                    <img src="{{ file_exists(AdminProfilePicture() . Auth::user()->image) ? (isset(Auth::user()->image) ? asset(AdminProfilePicture() . Auth::user()->image) : Avatar::create(Auth::user()->name)->toBase64()) : Auth::user()->image }}" alt="{{ $allsettings['app_title'] }}" width="25px" style="margin-top: -0.5rem;">
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
                        </li>
                        @else
                        <li style="margin-right: 10px; color: black">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        </li>
                        @endif
                    </ul>

                    <!-- <a href=""></a> -->
                </div>
                <div class="col-2">
                    <a href="{{ url('seller/login') }}">
                        <i class="fa fa-plus-square" aria-hidden="true"></i><br />
                    </a>

                </div>
                <div class="col-2">
                    <a data-bs-toggle="offcanvas" href="#cartOffcanvasSidebar" role="button" aria-controls="cartOffcanvasSidebar">
                        <i class="fa fa-shopping-cart"></i><br />

                    </a>
                </div>

                <div class="col-1"></div>
            </div>
        </div>
    </div>


    @push('post_script')
    <script src="{{asset('frontend/assets/js/pages/product.js')}}"></script>
    @endpush()

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
