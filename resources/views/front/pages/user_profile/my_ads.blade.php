@extends('front.layouts.master')
@section('title', isset($title) ? $title : 'Home')
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')
<!-- breadcrumb area start here  -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="breadcrumb-wrap text-center">
            <h2 class="page-title">{{__('My Ads')}}</h2>
            <ul class="breadcrumb-pages">
                <li class="page-item"><a class="page-item-link" href="{{route('front')}}">{{__('Home')}}</a></li>
                <li class="page-item">{{__('My Ads')}}</li>
            </ul>
        </div>
    </div>
</div>
<!-- breadcrumb area end here  -->

<!-- Profile Page area start here  -->
<div class="profile-page-area section">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-4">
                @include('front.layouts.include.user_profile_sidebar', ['menu' => 'ads'])
            </div>
            <div class="col-xl-9 col-lg-8">
                <div class="user-profile-right-part">
                    <div class="user-profile-content-box my-reviwe-list-box">

                        <div class="d-flex justify-content-between align-items-center text-black mb-5">
                            <h2 class="user-profile-content-title">{{__('My Ads')}}</h2>
                        </div>


                        <div class="single-review-item bg-white d-flex align-items-center">
                            <div class="review-right flex-grow-1">
                                <h4 class="product-name">{{__('No ads yet!')}}</h4>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Profile Page area end here  -->
@endsection
