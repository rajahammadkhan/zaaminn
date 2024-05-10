@extends('front.layouts.master')
@section('title', isset($title) ? $title : 'Home')
@section('description', isset($description) ? $description : '')
@section('keywords', isset($keywords) ? $keywords : '')
@section('content')
<!-- breadcrumb area start here  -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="breadcrumb-wrap text-center">
            <h2 class="page-title">{{__('My Wishlist')}}</h2>
            <ul class="breadcrumb-pages">
                <li class="page-item"><a class="page-item-link" href="{{route('front')}}">{{__('Home')}}</a></li>
                <li class="page-item">{{__('My Wishlist')}}</li>
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
                @include('front.layouts.include.user_profile_sidebar', ['menu' => 'wishlist'])
            </div>
            <div class="col-xl-9 col-lg-8">
                <div class="user-profile-right-part">
                    <div class="user-profile-content-box my-reviwe-list-box">

                        <div class="d-flex justify-content-between align-items-center text-black mb-5">
                            <h2 class="user-profile-content-title">{{__('My Wishlist')}}</h2>
                        </div>

                        <table class="table table-borderless">
                            <thead>
                                <tr>
                                    <th>{{__('Image')}}</th>
                                    <th>{{__('Product')}}</th>
                                    <th>{{__('Category')}}</th>
                                    <th>{{__('Brand')}}</th>
                                    <th>{{__('Price')}}</th>
                                    <th>{{__('Added On')}}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($wishlists as $wish)
                                <tr>
                                    <td>
                                        <img src="{{ asset(ProductImage() . $wish->product->Primary_Image) }}" alt="{{$wish->product->en_Product_Name}}" class="img-fluid img-rounded" style="max-width: 80px;">
                                    </td>
                                    <td>
                                        <a href="#" class="product-name">{{$wish->product->en_Product_Name}}</a>
                                    </td>
                                    <td>
                                        <a href="" class="product-name">{{$wish->product->category->en_Category_Name }}</a>
                                    </td>
                                    <td>
                                        <a href="" class="product-name">{{$wish->product->brand->en_BrandName }}</a>
                                    </td>
                                    <td>
                                        <span class="product-price">${{$wish->product->Discount_Price }}</span>
                                    </td>
                                    <td>
                                        <span class="product-price">{{$wish->created_at->format('d M Y')}}</span>
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td colspan="4">
                                        <h4 class="product-name">{{__('No wishes yet!')}}</h4>
                                    </td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Profile Page area end here  -->
@endsection
