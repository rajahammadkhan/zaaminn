@extends('front.layouts.master')
<!-- @section('title', isset($title) ? $title : 'Home') -->
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')
<!-- breadcrumb area start here  -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="breadcrumb-wrap text-center">
            <h2 class="page-title">{{ $product->brand['en_BrandName'] ? langConverter($product->brand['en_BrandName'],
                $product->brand['en_BrandName']) . ' ' . $product->model : $product->model }}</h2>
            <ul class="breadcrumb-pages">
                <li class="page-item"><a class="page-item-link" href="{{ route('front') }}">{{ __('Home') }}</a>
                </li>
                <li class="page-item">{{ __('Product Single Page') }}</li>
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
                                        src="{{ asset( $product->image) }}" alt="{{ __('product') }}" />
                                </li>
                            </ul>
                        </div>
                        <div class="product-slier-big-image">
                            <div class="product-priview-slide slider slider-for">
                                <div class="single-slide">
                                    <img class="slide-image" src="{{ asset( $product->image) }}" style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;" alt="{{ __('product') }}" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-12">
                            <div class="product-single-right">
                                <div class="product-info">
                                    <h3 class="product-name">
                                        {{ $product->brand['en_BrandName'] ?
                                        langConverter($product->brand['en_BrandName'], $product->brand['en_BrandName'])
                                        . ' ' . $product->model : $product->model }}</h3>
                                    {!! productReview($product->id) !!}

                                    <div class="product-price">
                                        <span class="price">{{ currencyConverter($product->price) }}</span>
                                    </div>

                                    <p class="note-text">{{ langConverter($product->en_About, $product->fr_About) }}
                                    </p>

                                  <div class="custom-detail product-color-area">
                                    <div class="variable-single-item color-switch row">
                                        @foreach ($productDetails as $detail)
                                        <div class="product-variable-color col-12 border-bottom">
                                            <span class="label-icon">{!! $detail['icon'] !!}</span>
                                            <span class="label-text">{{ $detail['label'] }}</span>:
                                            <b class="value-text">
                                                @if (is_array($detail['value']))
                                                {{ implode(', ', array_map(function($condition) { return ucwords(str_replace('-', ' ', $condition)); },
                                                $detail['value'])) }}
                                                @else
                                                {{ $detail['value'] }}
                                                @endif
                                            </b>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>

                                    <div class="product-color-area d-none">
                                        <div class="variable-single-item color-switch row">
                                            <div class="product-variable-color col-12 border-bottom">
                                                Location: <b> <span class="text-dark"> {{ $product->city}}</span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Color: <b> <span class="text-dark"> {{ $product->color}} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Storage: <b> <span class="text-dark"> {{ ucwords(str_ireplace('gb', '
                                                        GB', $product->storage)) }} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Ram: <b> <span class="text-dark"> {{ ucwords(str_ireplace('gb', ' GB',
                                                        $product->ram)) }} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Body Condition: <b> <span class="text-dark"> {{
                                                        $product->bodyCondition}} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Screen Condition: <b> <span class="text-dark"> {{ preg_replace('/(?<=\\w)(?=[A-Z]) /', ' ' , ucwords(str_replace('-', ' ' ,
                                                            $product->screen_glass))) }} </span></b>
                                            </div>
                                            @if (!empty($product->lcd_condition) && is_array($product->lcd_condition))
                                            <div class="product-variable-color col-12 border-bottom">
                                                LCD Condition:
                                                <b>
                                                    <span class="text-dark">
                                                        {{ implode(', ', array_map(function($condition) {
                                                        return ucwords(str_replace('-', ' ', $condition));
                                                        }, $product->lcd_condition)) }}
                                                    </span>
                                                </b>
                                            </div>
                                            @endif
                                            <div class="product-variable-color col-12 border-bottom">
                                                Working Status: <b> <span class="text-dark"> {{ preg_replace('/(?<=\\w)(?=[A-Z]) /', ' ' , ucwords($product->WorkingCondition))
                                                            }} </span></b>
                                            </div>
                                            @if ($product->WorkingCondition !== 'fullyFunctional' &&
                                            !empty($product->issues) && is_array($product->issues))
                                            <div class="product-variable-color col-12 border-bottom">
                                                Issues:
                                                <b>
                                                    <span class="text-dark">
                                                        {{ implode(', ', array_map(function($condition) {
                                                        return ucwords(str_replace('-', ' ', $condition));
                                                        }, $product->issues)) }}
                                                    </span>
                                                </b>
                                            </div>
                                            @endif
                                            <div class="product-variable-color col-12 border-bottom">
                                                Sim: <b> <span class="text-dark"> {{ $product->sim }} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Carrier Lock/Network Lock: <b> <span class="text-dark"> {{
                                                        $product->is_carrier_lock ? 'Yes' : 'No' }} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                PTA offical: <b> <span class="text-dark"> {{ $product->is_pta_official ?
                                                        'Yes' : 'No' }} </span></b>
                                            </div>
                                            @if(!$product->is_pta_official)
                                            <div class="product-variable-color col-12 border-bottom">
                                                Sim Working: <b> <span class="text-dark"> {{ $product->is_sim_working ?
                                                        'Yes' : 'No' }} </span></b>
                                            </div>
                                            @endif
                                            <div class="product-variable-color col-12 border-bottom">
                                                Official Warranty: <b> <span class="text-dark">
                                                        {{ $product->is_official_warranty ? 'Yes' : 'No' }}
                                                        {{$product->is_official_warranty ? ': (' .
                                                        $product->warrantyMonths . ' Months)' : ''}}
                                                    </span></b>
                                            </div>
                                            {{-- <div class="product-variable-color col-12 border-bottom">
                                                Warranty: <b> <span class="text-dark"> {{ $product->warrantyMonths . '
                                                        Months' }} </span></b>
                                            </div> --}}
                                            <div class="product-variable-color col-12 border-bottom">
                                                Price: <b> <span class="text-dark"> {{ $product->price }} </span></b>
                                            </div>
                                            @if($product->brand_id == 8)
                                            <div class="row">
                                                <div class="product-variable-color col-12 border-bottom">
                                                    True Tone: <b> <span class="text-dark"> {{ $product->is_true_tone ?
                                                            'Yes' : 'No'}} </span></b>
                                                </div>
                                                @if($product->iphone_message && isset($product->iphone_message))
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Iphone Message:
                                                    <b>
                                                        <span class="text-dark">
                                                            {{ implode(', ', array_map(function($condition) {
                                                            return ucwords(str_replace('-', ' ', $condition));
                                                            }, $product->iphone_message)) }}
                                                        </span>
                                                    </b>
                                                </div>
                                                @endif
                                                @if($product->battery_status)
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Battery Health: <b> <span class="text-dark"> {{
                                                            $product->battery_status }} </span></b>
                                                </div>
                                                @endif
                                            </div>
                                            @endif
                                            <div class="product-variable-color col-12 border-bottom">
                                                Description: <b> <span class="text-dark"> {!!
                                                        langConverter($product->description, $product->description) !!}
                                                    </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Contact Number: <b> <span class="text-dark"> {{ $product->number }}
                                                    </span></b>
                                            </div>
                                        </div>
                                        <!-- <div class="variable-single-item color-switch">
                                            </div>
                                            <div class="variable-single-item color-switch">
                                            </div> -->
                                    </div>
                                    <div class="d-none">
                                        <div class="prdouct-btn-wrapper d-flex align-items-center">
                                            <div class="cart-plus-minus">
                                                <div class="dec qtybutton btn">-</div>
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton"
                                                    id="product_quantity" value="1" readonly />
                                                <div class="inc qtybutton btn">{{ __('+') }}</div>
                                            </div>
                                            <a class="product-btn MyWishList" data-id="{{ $product->id }}"
                                                title="{{ __('Add To Wishlist') }}"><i
                                                    class="icon flaticon-like"></i></a>
                                            <a class="product-btn CompareList" data-id="{{ $product->id }}"
                                                title="{{ __('Add To Compare') }}"><i
                                                    class="icon flaticon-bar-chart"></i></a>
                                        </div>
                                        <div class="product-bottom-button d-flex">
                                            <a href="https://wa.me/+923282966204?text={{ urlencode('Product Details: ' . $product->brand->en_BrandName . ' ' . $product->model . ', Color: ' . $product->color . ', Storage: ' . $product->storage . ', City: ' . $product->city . ', Price: Rs ' . $product->price) }}"
                                                target='_blank'" class=" primary-btn buyNow"
                                                data-id="{{ $product->id }}">{{ __('Purchase By Zaaminn') }}
                                                <i class='fa fa-whatsapp'></i>
                                            </a>
                                            <a href="javascript:void(0)" title="{{ __('Add To Cart') }}"
                                                class="add-cart addCart" data-id="{{ $product->id }}"
                                                data-type="Seller">
                                                {{ __('Add To Cart') }} <i class="icon fas fa-plus-circle"></i>
                                            </a>
                                        </div>
                                        <div class="product-right-bottom">
                                            <ul class="features">
                                                <li class="single-feature"><img class="icon"
                                                        src="{{ asset('frontend/assets/images/delivery-van-icon.svg') }}"
                                                        alt="icon" /><strong class="feature-title">{{ __('Estimated
                                                        Delivery:') }}</strong><span class="feature-text">{{
                                                        allsetting()['estimating_delivery'] }}</span></li>
                                                <li class="single-feature"><img class="icon"
                                                        src="{{ asset('frontend/assets/images/shipping-return.svg') }}"
                                                        alt="icon" /><strong class="feature-title">{{ __('Shipping
                                                        Charge:') }}</strong><span class="feature-text">{{ __('On all
                                                        orders over') }}
                                                        {{ currencyConverter(allsetting()['shipping_charge']) }}</span>
                                                </li>
                                            </ul>

                                            @if ($allsettings['news_letter_status'] == '1')
                                            <div class="guarantee-checkout-area">
                                                <h3 class="guarantee-title">{{ $allsettings['news_letter_title'] }}</h3>
                                                <img src="{{ asset(IMG_FOOTER_PATH . $allsettings['news_letter_img']) }}"
                                                    alt="payment-method-image" />
                                            </div>
                                            @endif
                                        </div>
                                        <div class="share-area mt-30">
                                            <h3 class="share-title">{{ __('SHARE:') }}</h3>
                                            <ul class="social-media a2a_kit">
                                                <li class="media-item"><a
                                                        class="media-link facebook a2a_button_facebook"
                                                        href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a>
                                                </li>
                                                <li class="media-item"><a class="media-link twitter a2a_button_twitter"
                                                        href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                                                </li>
                                                <li class="media-item"><a
                                                        class="media-link linkedin a2a_button_linkedin"
                                                        href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                                                </li>
                                                <li class="media-item"><a
                                                        class="media-link pinterest a2a_button_pinterest"
                                                        href="javascript:void(0)"><i class="fab fa-pinterest-p"></i></a>
                                                </li>
                                            </ul>
                                            <script async src="https://static.addtoany.com/menu/page.js"></script>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-bottom-info mt-50 d-none">
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
