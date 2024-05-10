@extends('front.layouts.master')
<!-- @section('title', isset($title) ? $title : 'Home') -->
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')
<style>
    .padding-top-custom{
        padding-top: 6rem !important;
    }
</style>
    <!-- breadcrumb area start here  -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-wrap text-center">
                <h2 class="page-title">{{ preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords($product->category)) }}</h2>
                <ul class="breadcrumb-pages">
                    <li class="page-item"><a class="page-item-link" href="{{ route('front') }}">{{ __('Home') }}</a>
                    </li>
                    <li class="page-item">{{ __('Single Product') }}</li>                    
                </ul>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end here  -->

    <!-- product-single-area start here  -->
    <div class="product-single-area section-top">
        <div class="container">
            <div class="product-single-details">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="product-single-left">
                            <div class="product-thumbnail-image">
                                <ul class="product-thumb-silide slider slider-nav">
                                    <li class="single-item"><img class="single-item-image"
                                            src="{{ asset( $product->image) }}"
                                            alt="{{ __('product') }}"
                                        />
                                    </li>    
                                    @if ($product->image_two)
                                        <li class="single-item"><img class="single-item-image"
                                            src="{{ asset( $product->image_two) }}"
                                            alt="{{ __('product') }}" /></li>
                                    @endif
                                    @if ($product->image_three)
                                        <li class="single-item"><img class="single-item-image"
                                            src="{{ asset( $product->image_three) }}"
                                            alt="{{ __('product') }}" />
                                        </li>
                                    @endif
                                    @if ($product->image_four)
                                        <li class="single-item"><img class="single-item-image"
                                            src="{{ asset( $product->image_four) }}"
                                            alt="{{ __('product') }}" />
                                        </li>
                                    @endif

                                    @if ($product->image_five)
                                        <li class="single-item"><img class="single-item-image"
                                            src="{{ asset( $product->image_five) }}"
                                            alt="{{ __('product') }}" />
                                        </li>
                                    @endif                                
                                </ul>
                            </div>
                            <div class="product-slier-big-image">
                                <div class="product-priview-slide slider slider-for">
                                    <div class="single-slide">
                                        <img class="slide-image"
                                            src="{{ asset( $product->image) }}"
                                            style="width: 380px;
                                            height: 360px;
                                            object-fit: contain;"
                                            alt="{{ __('product') }}" />                                         
                                    </div>                                   
                                </div>                                   
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product-single-right">
                            <div class="product-info">                               
                                <h3 class="product-name">
                                {{ $product->sub_category }}</h3>
                                {!! productReview($product->id) !!}
                                <div class="product-price">                                   
                                    <span class="price">{{ currencyConverter($product->price)  }}</span>                                    
                                </div>
                                <p class="note-text">{{ $product->description }}</p>                            
                                <div class="prdouct-btn-wrapper d-flex align-items-center d-none">
                                    <div class="cart-plus-minus">
                                        <div class="dec qtybutton btn">-</div>
                                        <input class="cart-plus-minus-box" type="text" name="qtybutton"
                                            id="product_quantity" value="1" readonly />
                                        <div class="inc qtybutton btn">{{ __('+') }}</div>
                                    </div>
                                    <a class="product-btn MyWishList" data-id="{{ $product->id }}"
                                        title="{{ __('Add To Wishlist') }}"><i class="icon flaticon-like"></i></a>
                                    <a class="product-btn CompareList" data-id="{{ $product->id }}"
                                        title="{{ __('Add To Compare') }}"><i class="icon flaticon-bar-chart"></i></a>
                                </div>
                                <div class="product-bottom-button d-flex d-none">
                                    <a href="https://wa.me/+923282966204?text={{ urlencode('Product Details: ' . $product->category . ', Sub Category: ' . $product->sub_category . ', Price: Rs ' . $product->price) }}" target='_blank'" class="primary-btn buyNow"
                                        data-id="{{ $product->id }}">{{ __('Purchase By Zaaminn') }}
                                        <i class='fa fa-whatsapp'></i>
                                    </a>                                    
                                    <a href="javascript:void(0)" title="{{ __('Add To Cart') }}"
                                        class="add-cart addCart" data-id="{{ $product->id }}" data-type="Accessory">{{ __('Add To Cart') }}
                                        <i class="icon fas fa-plus-circle"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-right-bottom d-none">
                                <ul class="features">
                                    <li class="single-feature"><img class="icon"
                                        src="{{ asset('frontend/assets/images/delivery-van-icon.svg') }}"
                                        alt="icon" /><strong
                                        class="feature-title">{{ __('Estimated Delivery:') }}</strong>
                                        {{-- <span class="feature-text">{{ allsetting()['estimating_delivery'] }}</span> --}}
                                        <span class="feature-text">3 to 5 Days</span>
                                    </li>
                                    <li class="single-feature"><img class="icon"
                                        src="{{ asset('frontend/assets/images/shipping-return.svg') }}"
                                        alt="icon" /><strong
                                        class="feature-title">{{ __('Shipping Charge:') }}</strong>
                                        {{-- <span class="feature-text">{{ __('On all orders over') }} {{ currencyConverter(allsetting()['shipping_charge']) }}</span> --}}
                                        <span class="feature-text">400</span>
                                    </li>
                                </ul>
                                @if ($allsettings['news_letter_status'] == '1')
                                    <div class="guarantee-checkout-area">
                                        <h3 class="guarantee-title">{{ $allsettings['news_letter_title'] }}</h3>
                                        <img src="{{ asset(IMG_FOOTER_PATH . $allsettings['news_letter_img']) }}"
                                            alt="payment-method-image" />
                                    </div>
                                @endif
                                <div class="share-area mt-30">
                                    <h3 class="share-title">{{ __('SHARE:') }}</h3>
                                    <ul class="social-media a2a_kit">
                                        <li class="media-item"><a class="media-link facebook a2a_button_facebook"
                                                href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a></li>
                                        <li class="media-item"><a class="media-link twitter a2a_button_twitter"
                                                href="javascript:void(0)"><i class="fab fa-twitter"></i></a></li>
                                        <li class="media-item"><a class="media-link linkedin a2a_button_linkedin"
                                                href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li class="media-item"><a class="media-link pinterest a2a_button_pinterest"
                                                href="javascript:void(0)"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                    <script async src="https://static.addtoany.com/menu/page.js"></script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>           
        </div>
        <div class="product-bottom-info mt-50">
                <div class="nav-tabs-menu">
                    <ul class="nav nav-tabs" id="ProductTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="Description-tab" data-bs-toggle="tab"
                                data-bs-target="#Description" type="button" role="tab" aria-controls="Description"
                                aria-selected="true">
                                {{ __('Description') }}</button>
                        </li>                        
                    </ul>
                </div>

                <div class="tab-content" id="ProductTabContent">

                    <div class="tab-pane fade show active" id="Description" role="tabpanel"
                        aria-labelledby="Description-tab">
                        <div class="product-description">
                            {!! langConverter($product->description, $product->description) !!}
                        </div>
                    </div>                   
                </div>
            </div>
    </div>
    <!-- product-single-area end here  -->

    <!-- Featured Products area start here  -->  
@endsection
