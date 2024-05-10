<style>
    .primary-btn {
        display: inline-block;
        padding: 1.4rem 3rem;
        font-size: 1.6rem;
        font-weight: 600;
        text-transform: capitalize;
        /*color: var(--white);*/
        color: black !important;
        background-color: #FDD65B !important;
        -webkit-transition: all 0.3s linear;
        transition: all 0.3s linear;
        border: none;
    }

    .add-cart:hover,
    .product-btn:hover{
        background-color: #FDD65B !important;
        border: none !important;
        color: black !important;
    }
</style>
@extends('front.layouts.master')
@section('title', isset($title) ? $title : 'Home')
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')

    @if (((session('theme') && session('theme') == 'theme2') || $allsettings['theme'] == 'two') && !$zamin)

        @include('front.pages.product.details.product_details_two')
    @elseif ($zamin)
        @include('front.pages.product.details.product_details_three')
    @else

        @include('front.pages.product.details.product_details_one')
    @endif

    <!-- Page Load Popup Modal End -->
    <div id="DoNotSubscribe" data-url="{{ route('do.not.subscribe') }}"></div>
    <div id="SubscribeStore" data-url="{{ route('admin.subscribe.store') }}"></div>
    <div id="AddToCompareItemUrl" data-url="{{ route('compare.add') }}"></div>
    <div id="AddToCartIntoSession" data-url="{{ route('add.to.cart') }}"></div>
    <div id="buyNow" data-url="{{ route('buy.now') }}"></div>
    <div id="buyNowCheckOut" data-url="{{ route('checkout') }}"></div>
    <div id="productWishlistUrl" data-url="{{ route('wishlist.add') }}"></div>
    @push('post_script')
        <script src="{{ asset('frontend/assets/js/pages/single_product.js') }}"></script>
    @endpush()
@endsection
