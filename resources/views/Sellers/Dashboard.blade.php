@extends('Sellers.master')
@section('title', __('Dashboard'))
@section('content')
   <div class="wrapper">
      <div class="m-lg-1">
          <h1 style="color: #FFFFFF">
              Wellcome to Seller Dashboard
          </h1>
      </div>
       <div class="row">
           <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="status__box-3 bg-style">
                   <div class="item__left">
                       <h2>Total Seller Products</h2>
                       <div class="status__box__data">
                           <h2>{{$sellerProduct}}</h2>
                       </div>
                   </div>
                   <div class="item__right">
                       <div class="status__box__img">
                           <i class="fab fa-product-hunt fa-2x"></i>
                       </div>
                   </div>
               </div>
           </div>
           <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="status__box-3 bg-style">
                   <div class="item__left">
                       <h2>Sold Products</h2>
                       <div class="status__box__data">
                           <h2>{{$soldProducts}}</h2>
                       </div>
                   </div>
                   <div class="item__right">
                       <div class="status__box__img">
                           <i class="fas fa-check-circle fa-2x"></i>
                       </div>
                   </div>
               </div>
           </div>
           <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="status__box-3 bg-style">
                   <div class="item__left">
                       <h2>pendings Products</h2>
                       <div class="status__box__data">
                           <h2>{{$pendingsProducts}}</h2>
                       </div>
                   </div>
                   <div class="item__right">
                       <div class="status__box__img">
                           <i class="fas fa-check-circle fa-2x text-info"></i>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
    @endsection
