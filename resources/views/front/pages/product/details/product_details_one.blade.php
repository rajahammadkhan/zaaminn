@extends('front.layouts.master')
<!-- @section('title', isset($title) ? $title : 'Home') -->
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')
    <!-- breadcrumb area start here  -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-wrap text-center">
                <h2 class="page-title">{{ langConverter($products->en_Product_Name, $products->fr_Product_Name) }}</h2>
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
                                            src="{{ asset(ProductImage() . $products->Primary_Image) }}"

                                            alt="{{ __('product') }}"
                                        /></li>
                                    @if ($products->Image2)
                                        <li class="single-item"><img class="single-item-image"
                                                                     src="{{ asset(ProductImage() . $products->Image2) }}"
                                                                     alt="{{ __('product') }}" /></li>
                                    @endif
                                    @if ($products->Image3)
                                        <li class="single-item"><img class="single-item-image"
                                                                     src="{{ asset(ProductImage() . $products->Image3) }}"
                                                                     alt="{{ __('product') }}" />
                                        </li>
                                    @endif
                                    @if ($products->Image4)
                                        <li class="single-item"><img class="single-item-image"
                                                src="{{ asset(ProductImage() . $products->Image4) }}"
                                                alt="{{ __('product') }}" />
                                        </li>
                                    @endif

                                    @if ($products->Image5)
                                        <li class="single-item"><img class="single-item-image"
                                                src="{{ asset(ProductImage() . $products->Image5) }}"
                                                alt="{{ __('product') }}" /></li>
                                    @endif

                                </ul>
                            </div>
                            <div class="product-slier-big-image">
                                <div class="product-priview-slide slider slider-for">
                                    <div class="single-slide">
                                        <img class="slide-image"
                                            src="{{ asset(ProductImage() . $products->Primary_Image) }}"
                                             style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;"
                                            alt="{{ __('product') }}" />
                                    </div>
                                    @if ($products->Image4)
                                        <div class="single-slide">
                                            <img class="slide-image" src="{{ asset(ProductImage() . $products->Image4) }}"
                                                 style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;"
                                                alt="{{ __('product') }}" />
                                        </div>
                                    @endif
                                    @if ($products->Image3)
                                        <div class="single-slide">
                                            <img class="slide-image" src="{{ asset(ProductImage() . $products->Image3) }}"
                                                 style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;"
                                                alt="{{ __('product') }}" />
                                        </div>
                                    @endif
                                    @if ($products->Image5)
                                        <div class="single-slide">
                                            <img class="slide-image" src="{{ asset(ProductImage() . $products->Image5) }}"
                                                 style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;"
                                                alt="{{ __('product') }}" />
                                        </div>
                                    @endif
                                    @if ($products->Image2)
                                        <div class="single-slide">
                                            <img class="slide-image" src="{{ asset(ProductImage() . $products->Image2) }}"
                                                 style="width: 380px;
                                                                 height: 360px;
                                                                 object-fit: contain;"
                                                alt="{{ __('product') }}" />
                                        </div>
                                    @endif

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-8">
                                <div class="product-single-right">
                                    <div class="product-info">
                                        @foreach ($products->product_tags as $ppt)
                                            <h4 class="product-catagory">{{ $ppt->tag }}</h4>
                                        @endforeach

                                        <h3 class="product-name">
                                            {{ langConverter($products->en_Product_Name, $products->fr_Product_Name) }}</h3>
                                        <!-- This is server side code. User can not modify it. -->
                                        {!! productReview($products->id) !!}

                                        <div class="product-price">
                                            @if (currencyConverter($products->Price) == currencyConverter($products->Discount_Price))
                                                <span class="price">{{ currencyConverter($products->Discount_Price) }}</span>
                                            @else
                                                <span class="price">{{ currencyConverter($products->Discount_Price) }}</span>
                                                <span class="regular-price">{{ currencyConverter($products->Price) }}</span>
                                            @endif
                                        </div>

                                        <p class="note-text">{{ langConverter($products->en_About, $products->fr_About) }}
                                        </p>

                                        <div class=" product-details-container">
                                            <div class="product-size-area">
                                                <h4 class="size-title">{{ __('Type:') }} {{ productTypeText($products->id) }}</h4>
                                                <ul class="size-switch">
                                                    @foreach ($products->sizes as $item)
                                                    <input type="hidden" class="sizeValue" name="productSize" value="{{ $item->id }}">
                                                    <li class="single-size activeSize" data-size="{{ $item->id }}">{{ $item->Size }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                            <div class="additional-details-area">
                                                <ul class="custom-detail additional-details-list">
                                                    <li><i class="fas fa-map-marker-alt"></i> <strong>Location:</strong> <span class="text-dark">{{
                                                            $products->city }}</span></li>
                                                    <li><i class="fas fa-palette"></i> <strong>Color:</strong> <span class="text-color">{{ $products->color
                                                            }}</span></li>
                                                    <li><i class="fas fa-hdd"></i> <strong>Storage:</strong> <span class="text-dark">{{
                                                            ucwords(str_ireplace('gb', 'GB', $products->storage)) }}</span></li>
                                                    <li><i class="fas fa-memory"></i> <strong>Ram:</strong> <span class="text-dark">{{
                                                            ucwords(str_ireplace('gb', 'GB', $products->ram)) }}</span></li>
                                                    <li><i class="fas fa-heartbeat"></i> <strong>Body Condition:</strong> <span class="text-dark">{{
                                                            $products->bodyCondition }}</span></li>
                                                    <li><i class="fas fa-mobile-alt"></i> <strong>Screen Condition:</strong> <span class="text-dark">{{
                                                            preg_replace('/(?<=\\w)(?=[A-Z]) /', ' ' , ucwords(str_replace('-', ' ' , $products->screen_glass)))
                                                                }}</span></li>
                                                    @if (!empty($products->lcd_condition) && is_array($products->lcd_condition))
                                                    <li><i class="fas fa-tv"></i> <strong>LCD Condition:</strong> <span class="text-dark">{{ implode(', ',
                                                            array_map(function($condition) { return ucwords(str_replace('-', ' ', $condition)); },
                                                            $products->lcd_condition)) }}</span></li>
                                                    @endif
                                                    <li><i class="fas fa-wrench"></i> <strong>Working Status:</strong> <span class="text-dark">{{
                                                            preg_replace('/(?<=\\w)(?=[A-Z]) /', ' ' , ucwords($products->WorkingCondition)) }}</span></li>
                                                    @if ($products->WorkingCondition !== 'fullyFunctional' && !empty($products->issues) &&
                                                    is_array($products->issues))
                                                    <li><i class="fas fa-exclamation-triangle"></i> <strong>Issues:</strong> <span class="text-dark">{{
                                                            implode(', ', array_map(function($condition) { return ucwords(str_replace('-', ' ', $condition)); },
                                                            $products->issues)) }}</span></li>
                                                    @endif
                                                    <li><i class="fas fa-sim-card"></i> <strong>Sim:</strong> <span class="text-dark">{{ $products->sim
                                                            }}</span></li>
                                                    <li><i class="fas fa-lock"></i> <strong>Carrier Lock/Network Lock:</strong> <span class="text-dark">{{
                                                            $products->is_carrier_lock ? 'Yes' : 'No' }}</span></li>
                                                    <li><i class="fas fa-check-circle"></i> <strong>PTA Official:</strong> <span class="text-dark">{{
                                                            $products->is_pta_official ? 'Yes' : 'No' }}</span></li>
                                                    @if($products->is_pta_official)
                                                    <li><i class="fas fa-signal"></i> <strong>Sim Working:</strong> <span class="text-dark">{{
                                                            $products->is_sim_working ? 'Yes' : 'No' }}</span></li>
                                                    @endif
                                                    <li><i class="fas fa-shield-alt"></i> <strong>Official Warranty:</strong> <span class="text-dark">{{
                                                            $products->is_official_warranty ? 'Yes' : 'No' }} {{ $products->is_official_warranty ? ': (' .
                                                            $products->warrantyMonths . ' Months)' : '' }}</span></li>
                                                    <li><i class="fas fa-info-circle"></i> <strong>Description:</strong> <span class="text-dark">{!!
                                                            langConverter($products->description, $products->description) !!}</span></li>
                                                    <li><i class="fas fa-phone"></i> <strong>Contact Number:</strong> <span class="text-dark">{{
                                                            $products->number }}</span></li>
                                                </ul>
                                            </div>
                                        </div>


                                        <div class="product-size-area d-none">
                                            <h4 class="size-title">{{ __('Type:') }} {{ productTypeText($products->id) }}
                                            </h4>
                                            <ul class="size-switch">
                                                @foreach ($products->sizes as $item)
                                                    <input type="hidden" class="sizeValue" name="productSize"
                                                        value="{{ $item->id }}">
                                                    <li class="single-size activeSize" data-size="{{ $item->id }}">
                                                        {{ $item->Size }}</li>
                                                @endforeach
                                            </ul>
                                            <div class="row ">
                                                <div class="product-variable-color col-12 border-bottom">
                                                Location: <b> <span class="text-dark"> {{ $products->city}}</span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                Color: <b> <span class="text-dark"> {{ $products->color}} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                Storage: <b> <span class="text-dark"> {{ ucwords(str_ireplace('gb', ' GB', $products->storage)) }} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                Ram: <b> <span class="text-dark"> {{ ucwords(str_ireplace('gb', ' GB', $products->ram)) }} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                Body Condition: <b> <span class="text-dark"> {{ $products->bodyCondition}} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                Screen Condition: <b> <span class="text-dark"> {{ preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords(str_replace('-', ' ', $products->screen_glass))) }} </span></b>
                                                </div>
                                                @if (!empty($products->lcd_condition) && is_array($products->lcd_condition))
                                                <div class="product-variable-color col-12 border-bottom">
                                                    LCD Condition:
                                                    <b>
                                                        <span class="text-dark">
                                                            {{ implode(', ', array_map(function($condition) {
                                                                return ucwords(str_replace('-', ' ', $condition));
                                                            }, $products->lcd_condition)) }}
                                                        </span>
                                                    </b>
                                                </div>
                                                @endif
                                                <div class="product-variable-color col-12 border-bottom">
                                                Working Status: <b> <span class="text-dark"> {{ preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords($products->WorkingCondition)) }} </span></b>
                                                </div>
                                                @if ($products->WorkingCondition !== 'fullyFunctional' && !empty($products->issues) && is_array($products->issues))
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Issues:
                                                    <b>
                                                        <span class="text-dark">
                                                            {{ implode(', ', array_map(function($condition) {
                                                                return ucwords(str_replace('-', ' ', $condition));
                                                            }, $products->issues)) }}
                                                        </span>
                                                    </b>
                                                </div>
                                                @endif
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Sim: <b> <span class="text-dark"> {{ $products->sim }} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Carrier Lock/Network Lock: <b> <span class="text-dark"> {{ $products->is_carrier_lock ? 'Yes' : 'No' }} </span></b>
                                                </div>
                                                <div class="product-variable-color col-12 border-bottom">
                                                    PTA offical: <b> <span class="text-dark"> {{ $products->is_pta_official ? 'Yes' : 'No' }} </span></b>
                                                </div>
                                                @if($products->is_pta_official)
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Sim Working: <b> <span class="text-dark"> {{ $products->is_sim_working ? 'Yes' : 'No' }} </span></b>
                                                </div>
                                                @endif
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Official Warranty: <b> <span class="text-dark">
                                                    {{ $products->is_official_warranty ? 'Yes' : 'No' }}
                                                    {{$products->is_official_warranty ? ': (' . $products->warrantyMonths . ' Months)' : ''}}
                                                    </span></b>
                                                </div>
                                                {{-- <div class="product-variable-color col-12 border-bottom">
                                                    Warranty: <b> <span class="text-dark"> {{ $products->warrantyMonths . ' Months' }} </span></b>
                                                </div>                                        --}}
                                                <div class="product-variable-color col-12 border-bottom">
                                                    Price: <b> <span class="text-dark"> {{ $products->price }} </span></b>
                                                </div>
                                            </div>
                                             @if($products->Brand_Id == 8)
                                                <div class="row">
                                                    <div class="product-variable-color col-12 border-bottom">
                                                        True Tone: <b> <span class="text-dark"> {{ $products->is_true_tone ? 'Yes'  : 'No'}} </span></b>
                                                    </div>
                                                    @if($products->iphone_message && isset($products->iphone_message))
                                                        <div class="product-variable-color col-12 border-bottom">
                                                            Iphone Message:
                                                            <b>
                                                                <span class="text-dark">
                                                                    {{ implode(', ', array_map(function($condition) {
                                                                        return ucwords(str_replace('-', ' ', $condition));
                                                                    }, $products->iphone_message)) }}
                                                                </span>
                                                            </b>
                                                        </div>
                                                    @endif
                                                    @if($products->battery_status)
                                                        <div class="product-variable-color col-12 border-bottom">
                                                            Battery Health: <b> <span class="text-dark"> {{ $products->battery_status }} </span></b>
                                                        </div>
                                                    @endif
                                                </div>
                                            @endif
                                            <div class="product-variable-color col-12 border-bottom">
                                                Description: <b> <span class="text-dark">  {!! langConverter($products->description, $products->description) !!} </span></b>
                                            </div>
                                            <div class="product-variable-color col-12 border-bottom">
                                                Contact Number: <b> <span class="text-dark"> {{ $products->number }} </span></b>
                                            </div>
                                        </div>
                                    <div class="d-none">
                                        <div class="prdouct-btn-wrapper d-flex align-items-center">
                                            <div class="cart-plus-minus">
                                                <div class="dec qtybutton btn">-</div>
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton"
                                                    id="product_quantity" value="1" readonly />
                                                <div class="inc qtybutton btn">{{ __('+') }}</div>
                                            </div>
                                            <a class="product-btn MyWishList" data-id="{{ $products->id }}"
                                                title="{{ __('Add To Wishlist') }}"><i class="icon flaticon-like"></i></a>
                                            <a class="product-btn CompareList" data-id="{{ $products->id }}"
                                                title="{{ __('Add To Compare') }}"><i class="icon flaticon-bar-chart"></i></a>
                                        </div>
                                        <div class="product-bottom-button d-flex">
                                            <a href="javascript:void(0)" class="primary-btn buyNow"
                                                data-id="{{ $products->id }}">{{ __('Buy Now') }}</a>
                                            <a href="javascript:void(0)" title="{{ __('Add To Cart') }}"
                                                class="add-cart addCart" data-id="{{ $products->id }}">{{ __('Add To Cart') }}
                                                <i class="icon fas fa-plus-circle"></i></a>
                                        </div>
                                        </div>
                                        <div class="product-right-bottom d-none">
                                            <ul class="features">
                                                <li class="single-feature"><img class="icon"
                                                        src="{{ asset('frontend/assets/images/delivery-van-icon.svg') }}"
                                                        alt="icon" /><strong
                                                        class="feature-title">{{ __('Estimated Delivery:') }}</strong><span
                                                        class="feature-text">{{ allsetting()['estimating_delivery'] }}</span></li>
                                                <li class="single-feature"><img class="icon"
                                                        src="{{ asset('frontend/assets/images/shipping-return.svg') }}"
                                                        alt="icon" /><strong
                                                        class="feature-title">{{ __('Shipping Charge:') }}</strong><span
                                                        class="feature-text">{{ __('On all orders over') }}
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

                                            <div class="share-area mt-30 d-none">
                                                <h3 class="share-title">{{ __('SHARE:') }}</h3>
                                                <ul class="social-media a2a_kit">
                                                    <li class="media-item"><a class="media-link facebook a2a_button_facebook"
                                                            href="javascript:void(0)"><i class="fab fa-facebook-f" style="position: relative; top: 9px;"></i></a></li>
                                                    <li class="media-item"><a class="media-link twitter a2a_button_twitter"
                                                            href="javascript:void(0)"><i class="fab fa-twitter" style="position: relative; top: 9px;"></i></a></li>
                                                    <li class="media-item"><a class="media-link linkedin a2a_button_linkedin"
                                                            href="javascript:void(0)"><i class="fab fa-linkedin-in" style="position: relative; top: 9px;"></i></a></li>
                                                    <li class="media-item"><a class="media-link pinterest a2a_button_pinterest"
                                                            href="javascript:void(0)"><i class="fab fa-pinterest-p" style="position: relative; top: 9px;"></i></a></li>
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
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="Reviews-tab" data-bs-toggle="tab" data-bs-target="#Reviews"
                                type="button" role="tab" aria-controls="Reviews" aria-selected="false">
                                {{ __('Reviews') }}</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="Shipping-Return-tab" data-bs-toggle="tab"
                                data-bs-target="#Shipping-Return" type="button" role="tab"
                                aria-controls="Shipping-Return" aria-selected="false">
                                {{ __('Shipping & Return') }}</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="Additional-Information-tab" data-bs-toggle="tab"
                                data-bs-target="#Additional-Information" type="button" role="tab"
                                aria-controls="Additional-Information" aria-selected="false">
                                {{ __('Additional Information') }}</button>
                        </li>
                    </ul>
                </div>

                <div class="tab-content" id="ProductTabContent">

                    <div class="tab-pane fade show active" id="Description" role="tabpanel"
                        aria-labelledby="Description-tab">
                        <div class="product-description">
                            {!! langConverter($products->en_Description, $products->fr_Description) !!}
                        </div>
                    </div>

                    <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                        <div class="product-reviews">
                            <div class="review-top">
                                <div class="review-top-left">
                                    <span class="review-point">{{ productReviewNumber($products->id) }}</span>
                                    <!-- This is server side code. User can not modify it. -->
                                    {!! productReview($products->id) !!}
                                    <span class="review-count">{{ productReviewerNumber($products->id) }}
                                        {{ __('Reviews') }}</span>
                                </div>
                            </div>

                            <div class="reviews-list">
                                @forelse($products->product_reviews as $review)
                                    <div class="single-review">
                                        <div class="reviewer">
                                            <div class="reviewer-wrap">
                                                <img class="reviewer-image"
                                                    src="{{ isset($review->user->image) ? asset(AdminProfilePicture() . $review->user->image) : Avatar::create($review->user->name)->toBase64() }}"
                                                    alt="reviewer-image" />
                                                <h4 class="reviewer-name">{{ $review->user->name }}</h4>
                                            </div>
                                        </div>
                                        <div class="review-middle">
                                            <!-- This is server side code. User can not modify it. -->
                                            {!! reviewRating($review->id) !!}
                                            <span
                                                class="remiew-time">{{ \Carbon\Carbon::parse($review->created_at)->diffForHumans() }}</span>
                                        </div>
                                        <h4 class="review-meta"><span
                                                class="time">{{ \Carbon\Carbon::parse($review->created_at)->format('jS M Y') }}
                                            </span> by <a class="author"
                                                href="javascript:void(0)">{{ $review->user->name }}</a></h4>
                                        <p class="review-text">{{ $review->feedback }}</p>
                                    </div>
                                @empty
                                    <h1>{{ __('No Review Yet!') }}</h1>
                                @endforelse

                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Shipping-Return" role="tabpanel"
                        aria-labelledby="Shipping-Return-tab">
                        <div class="shipping-return-area">
                            {!! langConverter($products->en_ShippingReturn, $products->fr_ShippingReturn) !!}
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Additional-Information" role="tabpanel"
                        aria-labelledby="Additional-Information-tab">
                        {!! langConverter($products->en_AdditionalInformation, $products->fr_AdditionalInformation) !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- product-single-area end here  -->

    <!-- Featured Products area start here  -->
    <div class="featured-productss-area section-top pb-100">
        <div class="container">
            <div class="section-header-area">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="sub-title">{{ __('Similar Products') }}</h3>
                        <h2 class="section-title">{{ __('Related Products') }}</h2>
                    </div>
                    <div class="col-md-6 align-self-end text-md-end">
                        <a href="{{ route('all.product') }}" class="see-btn">{{ __('See All') }}</a>
                    </div>
                </div>
            </div>
            <div class="row">
                @forelse($similar_product as $product)
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-grid-product">
                            <div class="product-top">
                                <a href="{{ route('single.product', $products->en_Product_Slug) }}"><img
                                        class="product-thumbnal"
                                        src="{{ asset(ProductImage() . $products->Primary_Image) }}" alt="product" /></a>
                                <div class="product-flags">
                                    @if ($products->ItemTag)
                                        <span class="product-flag sale">{{ $products->ItemTag }}</span>
                                    @endif
                                    @if ($products->Discount)
                                        <span
                                            class="product-flag discount">{{ __('-') }}{{ $products->Discount }}</span>
                                    @endif
                                </div>
                                <ul class="prdouct-btn-wrapper">
                                    <li class="single-product-btn">
                                        <a class="addToWishlist product-btn MyWishList" data-id="{{ $products->id }}"
                                            href="javascript:void(0)" title="{{ __('Add To Compare') }}"><i
                                                class="icon flaticon-bar-chart"></i></a>
                                    </li>
                                    <li class="single-product-btn">
                                        <a class="addCompare product-btn CompareList" data-id="{{ $products->id }}"
                                            href="javascript:void(0)" title="{{ __('Add To Wishlist') }}"><i
                                                class="icon flaticon-like"></i></a>
                                    </li>
                                </ul>
                            </div>


                            <div class="product-info text-center">
                                @foreach ($products->product_tags as $ppt)
                                    <h4 class="product-catagory">{{ $ppt->tag }}</h4>
                                @endforeach
                                <h3 class="product-name"><a class="product-link"
                                        href="{{ route('single.product', $products->en_Product_Slug) }}">{{ langConverter($products->en_Product_Name, $products->fr_Product_Name) }}</a>
                                </h3>
                                <!-- This is server side code. User can not modify it. -->
                                {!! productReview($products->id) !!}
                                <div class="product-price">
                                    <span class="regular-price">{{ currencyConverter($products->Price) }}</span>
                                    <span class="price">{{ currencyConverter($products->Discount_Price) }}</span>
                                </div>
                                <a href="javascript:void(0)" title="{{ __('Add To Cart') }}" class="add-cart addCart"
                                    data-id="{{ $products->id }}">{{ __('Add To Cart') }} <i
                                        class="icon fas fa-plus-circle"></i></a>
                            </div>
                        </div>
                    </div>
                @empty
                    <h1>{{ __('No related product found!') }}</h1>
                @endforelse
            </div>
        </div>
    </div>
@endsection
