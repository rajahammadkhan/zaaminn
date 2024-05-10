@extends('Sellers.master')
@section('title', __('SellerProduct'))
@section('content')
<head>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .nav-tabs .nav-link.active{
            color: #495057;
            background-color: #fff;
            /* border-color: #fff !important; */
            border-top: 4px solid #007bff!important

        }
        .nav-tabs .nav-link.active:focus-visible{
            outline:1px solid !important;
        }
        .nav-tabs .nav-link {

            border-top-left-radius: 0.25rem;
            border-top-right-radius: 0.25rem;
        }
        fieldset {
            border: 1px solid #0073ff !important;
            padding: 0 1em 1em 1em !important;
            margin: 0 0 1em 0 !important;
            border-radius: 0.4rem;
        }
        legend {
            width:inherit;
            padding:0 0.9rem;
            border-bottom:none;
            font-size: 1rem;
            color: #0073ff;
            margin-top: -1.8rem;
            background-color: #fff;
        }
        .custom-header {
            position: relative;
            display: flex;
            align-items: center;
        }
        label{
            font-weight: 600
        }
        .nav-tabs .nav-link:hover{
            border-color: transparent !important;
        }
        .custom-header::before,
        .custom-header::after {
            content: "";
            flex: 1;
            height: 1px; /* Adjust the height of the line as needed */
            background-color: rgba(128, 128, 128, 0.708); /* Adjust the color of the line as needed */
            margin: 0px 10px; /* Adjust the spacing between the line and text as needed */
        }
    </style>
</head>
<div class="row">
    <div class="col-md-12">
        <div class="breadcrumb__content">
            <div class="breadcrumb__content__left">
                <div class="breadcrumb__title">
                    <h2>{{__('Seller Products')}}</h2>
                </div>
            </div>
            <div class="breadcrumb__content__right">
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('seller.dashboard')}}">{{__('Home')}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{__('Seller Products')}}</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="customers__area bg-style mb-30">
            <div class="item-title">
                <div class="col-xs-6">
                    <button data-bs-toggle="modal" data-bs-target="#createModal1" class="btn btn-md btn-info">{{ __('Add Seller Product')}}</button>
                </div>
            </div>
            <div class="customers__table">
                <table id="BlogTable" class="row-border data-table-filter table-style">
                    <thead>
                        <tr>
                            <th>{{ __('product Name')}}</th>
                            <th>{{ __('product Model')}}</th>
                            <th>{{ __('Charges')}}</th>
                            <th>{{ __('Images')}}</th>
                            <th>{{ __('Mobile Number')}}</th>
                            <th>{{ __('working Condition')}}</th>
                            <th>{{ __('Discount')}}</th>
                            <th>{{ __('Approval')}}</th>
                            <th>{{ __('Status')}}</th>
                            <th>{{ __('Action')}}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                        <tr>
                            <td>{{isset($product->brand_id) ? $product->brand->en_BrandName:'NA'}} </td>
                            <td>{{$product->model}}</td>
                            <td>{{isset($product->price) ? $product->price:'NA'}} </td>

                            <td>
                                @if($product->image == null)
                                <p class='text-center text-danger'>Image not Uploaded</p>
                                @else
                                <img src="{{asset($product->image)}}" height="100" width="100">
                                @endif
                            </td>
                            <td>{{$product->number}}</td>
                            <td>{{ preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords($product->WorkingCondition)) }}</td>
                            <td>{{isset($product->discount_price) ? $product->discount_price:'NA'}} </td>
                            <td>
                                @php
                                    $approvalStatus = isset($product->is_admin_approval) ? $product->is_admin_approval : false;
                                    $badgeClass = $approvalStatus ? 'bg-success text-white' : 'bg-warning text-white';
                                @endphp
                                <span class="p-2 rounded cursor-pointer {{$badgeClass}}">{{$approvalStatus ? 'Approved' : 'Pending'}}</span>
                            </td>
                            <td>
                                @if($product->is_sold == 0)
                                In Stock
                                @elseif($product->is_sold == 1)
                                Sold
                                @endif
                            </td>
                            <td>
                                <div class="action__buttons">
                                    <a onclick="editCategory({{ $product->id }})" class="btn-action">
                                        <i class="fas fa-pen-to-square"></i>
                                    </a>
                                    <a href="{{url('seller/productDelete/'.$product->id)}}" class="btn-action delete">
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </div>
                            </td>
                            @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="createModal1" tabindex="-1" role="dialog" aria-labelledby="createModalTitle1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
        <form enctype="multipart/form-data" method="POST" action="{{route('seller.productStore')}}">
             @csrf
            <div class="modal-content">
                <div class="modal-header bg-info">
                    <h5 class="modal-title" id="editModalLongTitle">{{__('Add')}}</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Seller Product Form</button>
                        </li>
                        <!-- <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Product Category Form</button>
                        </li>                        -->
                    </ul>
                    <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="form-section">
                                    <h2 class="text-center mb-4">Seller Product Form</h2>
                                    <div class="row no-gutters">
                                            <div class="col-md-12 pr-3">
                                                <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                    <legend>
                                                        Contact Information
                                                    </legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-6 pr-2">
                                                            <label for="city" class="">City</label>
                                                            <input type="text" class="form-control" id="city" name="city" placeholder="City">
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="no" class="">Contact No</label>
                                                            <input type="text" class="form-control" id="no" name="number" placeholder="Contact No">
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <fieldset class="shadow-sm p-3 bg-white">
                                                    <legend>
                                                        Device Information
                                                    </legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-6 pr-2">
                                                            <label for="category">Category</label>
                                                            <select class="form-control" id="category" name="category_id">
                                                                <option value="" selected disabled>Please Select Category</option>
                                                                @foreach ($categories as $category )
                                                                    <option value="{{ $category->id}}"> {{ $category->en_Category_Name }}</option>
                                                                @endforeach
                                                                <!-- <option value="mobile">Mobile</option>
                                                                <option value="tablet">Tablet</option>
                                                                <option value="ipad">iPad</option> -->
                                                            </select>
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="brand">Brand</label>
                                                            <select class="form-control" id="brand" name="brand_id" required>
                                                                <option value="" selected disabled>Please Select Brand</option>
                                                                @foreach ($brands as $brand )
                                                                    <option value="{{ $brand->id}}"> {{ $brand->en_BrandName }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-6 pr-2">
                                                            <label for="model">Model</label>
                                                            <input type="text" class="form-control" id="model" name="model">
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="color">Color</label>
                                                            <input type="text" class="form-control" id="color" name="color">
                                                        </div>
                                                        <div class="col-12">
                                                            <label for="storage">Storage</label>
                                                            <div class="card shadow-sm mb-2">
                                                                <div class="card-body p-2">
                                                                    <div class="d-flex justify-content-around">
                                                                        <label class="px-1"><input type="radio" name="storage" value="16gb"> 16GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="32gb"> 32GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="64gb"> 64GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="128gb"> 128GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="256gb"> 256GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="512gb"> 512GB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="1tb"> 1TB</label>
                                                                        <label class="px-1"><input type="radio" name="storage" value="other"> Other</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12" id="ram">
                                                            <label for="ram" class="ram">Memory RAM</label>
                                                            <div class="card mb-2 ram shadow-sm">
                                                                <div class="card-body p-2">
                                                                    <div class="d-flex justify-content-around"  id="ramField">
                                                                        <label class="px-1"><input type="radio" name="ram" value="1gb"> 1GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="2gb"> 2GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="4gb"> 4GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="6gb"> 6GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="8gb"> 8GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="12gb"> 12GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="16gb"> 16GB</label>
                                                                        <label class="px-1"><input type="radio" name="ram" value="other"> other</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 pb-3">
                                                            <label>Body Condition</label>
                                                            <div class="card shadow-sm">
                                                                <div class="card-body p-2">
                                                                    <div class="form-group d-flex justify-content-around">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" name="bodyCondition" value="A">
                                                                            <label class="form-check-label" for="bodyConditionA">Full Clean</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" name="bodyCondition" value="B">
                                                                            <label class="form-check-label" for="bodyConditionB">Few Scratches</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio"  name="bodyCondition" value="C">
                                                                            <label class="form-check-label" for="bodyConditionC">Heavy Dents & Scratches</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="text-right col-12 pt-2 d-flex justify-content-end px-0 border-top">
                                                            <input type="file" class="form-control border-0 pl-0" id="image" name="image" required>
                                                        </div>
                                                        <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                            <label for="image_two">{{ __('Image 2') }}</label>
                                                            <input type="file" class="form-control putImage2" name="image_two" id="image_two">
                                                            <!-- <img src="" id="target2" /> -->
                                                            @error('image_two')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                            <label for="image_three">{{ __('Image 3') }}</label>
                                                            <input type="file" class="form-control putImage3" name="image_three" id="image_three">
                                                            <!-- <img src="" id="target3" /> -->
                                                            @error('image_three')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                            <label for="image_four">{{ __('Image 4') }}</label>
                                                            <input type="file" class="form-control putImage4" name="image_four" id="image_four">
                                                            <!-- <img src="" id="target4" /> -->
                                                            @error('image_four')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                        <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                            <label for="image_five">{{ __('Image 5') }}</label>
                                                            <input type="file" class="form-control putImage5" name="image_five" id="image_five">
                                                            <!-- <img src="" id="target5" /> -->
                                                            @error('image_five')
                                                            <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12 pr-3" id="iphone_details">
                                                <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                    <legend>
                                                        IPhone Details
                                                    </legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-4 border-right pr-3">
                                                            <div class="">
                                                                <label class="custom-header">True Tone</label>
                                                                <div class="form-group">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" id="yes" name="is_true_tone" value="true">
                                                                        <label class="form-check-label" for="yes">Yes</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" id="no" name="is_true_tone" value="false">
                                                                        <label class="form-check-label" for="no">No</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-4 pl-3 border-right pr-3">
                                                            <label class="custom-header">Message</label>
                                                            <div class="">
                                                                <div class="form-group row">
                                                                    <div class="form-check col-6 pl-5">
                                                                        <input class="form-check-input" type="checkbox" id="Display-message" name="iphone_message[]" value="Display-message-lcd">
                                                                        <label class="form-check-label" for="Display-message">Display Message</label>
                                                                    </div>
                                                                    <div class="form-check col-6 pl-5">
                                                                        <input class="form-check-input" type="checkbox" id="Camera-message" name="iphone_message[]" value="Dots-spots">
                                                                        <label class="form-check-label" for="Camera-message">Camera Message </label>
                                                                    </div>
                                                                    <div class="form-check col-6 pl-5">
                                                                        <input class="form-check-input" type="checkbox" id="Battery-Message" name="iphone_message[]" value="Battery-Message">
                                                                        <label class="form-check-label" for="Battery-Message">Battery Message</label>
                                                                    </div>
                                                                    <div class="form-check col-6 pl-5">
                                                                        <input class="form-check-input" type="checkbox" id="Battery-service" name="iphone_message[]" value="Shade-Heavy">
                                                                        <label class="form-check-label" for="Battery-service">Battery Service</label>
                                                                    </div>
                                                                    <div class="form-check col-6 pl-5">
                                                                        <input class="form-check-input" type="checkbox" id="none-of-these" name="iphone_message[]" value="none-of-these">
                                                                        <label class="form-check-label" for="none-of-these">None of these</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-4 pl-5">
                                                            <label class="custom-header">Battery Health</label>
                                                            <div class="">
                                                                <div class="form-group row">
                                                                    <div class="form-group">
                                                                    <div class="form-check">
                                                                            <input class="form-check-input" type="radio" id="above-85" name="battery_status" value="above-85">
                                                                            <label class="form-check-label" for="above-85">Above 85%</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" id="below-85" name="battery_status" value="below-85">
                                                                            <label class="form-check-label" for="below-85">Below 85%</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" id="battery-service" name="battery_status" value="battery-service">
                                                                            <label class="form-check-label" for="battery-service">Battery Service</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12 pr-3">
                                                <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                    <legend>
                                                        Glass Condition
                                                    </legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-12 border-right pr-3">
                                                            <div class="">
                                                                <div class="form-group row pl-2">
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="okGlass" name="screen_glass" value="full-clear">
                                                                        <label class="form-check-label" for="okGlass">Full clean</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="frontGlassBroken" name="screen_glass" value="front-glass-broken">
                                                                        <label class="form-check-label" for="frontGlassBroken">Front Glass Broken</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="FewGlassBroken" name="screen_glass" value="front-glass-broken">
                                                                        <label class="form-check-label" for="FewGlassBroken">Few Screches on Glass</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="HeavyGlassBroken" name="screen_glass" value="heavy-glass-broken">
                                                                        <label class="form-check-label" for="HeavyGlassBroken">Heavy Screches on Glass</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="backGlassBroken" name="screen_glass" value="back-glass-broken">
                                                                        <label class="form-check-label" for="backGlassBroken">Back Glass Broken</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="radio" id="bothSidesBroken" name="screen_glass" value="both-sides-broken">
                                                                        <label class="form-check-label" for="bothSidesBroken">Both Sides Broken</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                    <legend>
                                                        LCD Condition
                                                    </legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-12 pl-3">
                                                            <div class="">
                                                                <div class="form-group row pl-2">
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="Broken" name="lcd_condition[]" value="broken-lcd">
                                                                        <label class="form-check-label" for="Broken">Broken</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="Dotsspots" name="lcd_condition[]" value="dots-spots">
                                                                        <label class="form-check-label" for="Dotsspots">Dots / spots </label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="Lines" name="lcd_condition[]" value="lines">
                                                                        <label class="form-check-label" for="Lines">Lines</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="ShadeHeavy" name="lcd_condition[]" value="shade-heavy">
                                                                        <label class="form-check-label" for="ShadeHeavy">Shade Heavy</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="Shadelight" name="lcd_condition[]" value="shade-light">
                                                                        <label class="form-check-label" for="Shadelight">Shade light</label>
                                                                    </div>
                                                                    <div class="form-check col-4">
                                                                        <input class="form-check-input" type="checkbox" id="none" name="lcd_condition[]" value="full-clean">
                                                                        <label class="form-check-label" for="none">Full Clean</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                    <legend>Working Condition</legend>
                                                <div class="row no-gutters">
                                                    <div class="col-12 mb-2">
                                                        <label for="WorkingCondition" class="mb-3" >Working Status</label>
                                                        <select class="form-control" id="WorkingCondition" name="WorkingCondition">
                                                            <option value="" selected disabled>Please select working condition</option>
                                                            <option value="fullyFunctional">Fully Functional</option>
                                                            <option value="Issue">Issue</option>
                                                        </select>
                                                    </div>
                                                    <di class=" col-12 " id="Workingissue">
                                                        <label for="WorkingCondition" class="custom-header mb-4">Working Issue</label>
                                                        <div class="row no-gutters">
                                                            <div class="col-6 pr-3 border-right">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" name="issues[]" id="batteryIssue" value="Battery-Issue">
                                                                    <label class="form-check-label" for="batteryIssue">Battery Issue</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="chargingIssue" name="issues[]" value="Charging-Issue">
                                                                    <label class="form-check-label" for="chargingIssue">Charging Issue</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="frontCamera" name="issues[]" value="Front-Camera">
                                                                    <label class="form-check-label" for="frontCamera">Front Camera</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="backCamera" name="issues[]" value="Back-Camera">
                                                                    <label class="form-check-label" for="backCamera">Back Camera</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="faceID" name="issues[]" value="Face-ID">
                                                                    <label class="form-check-label" for="faceID">Face ID</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="wibi" name="issues[]" value="Wibi">
                                                                    <label class="form-check-label" for="wibi">Wifi</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="signalDrop" name="issues[]" value="Signal-Drop">
                                                                    <label class="form-check-label" for="signalDrop">Signal Drop</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="buttons" name="issues[]" value="Buttons">
                                                                    <label class="form-check-label" for="buttons">Buttons</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="earpiece" name="issues[]" value="Earpiece">
                                                                    <label class="form-check-label" for="earpiece">Earpiece</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-6 pl-3">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="vibration" name="issues[]" value="Vibration">
                                                                    <label class="form-check-label" for="vibration">Vibration</label>
                                                                    </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="touchProblem" name="issues[]" value="Touch-Problem">
                                                                    <label class="form-check-label" for="touchProblem">Touch Problem</label>
                                                                </div>

                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="mouthpiece" name="issues[]" value="Mouthpiece/Mic">
                                                                    <label class="form-check-label" for="mouthpiece">Mouthpiece/Mic</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="speakerSound" name="issues[]" value="Speaker-Sound">
                                                                    <label class="form-check-label" for="speakerSound">Speaker Sound</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="fingerprintSensor" name="issues[]" value="Fingerprint-Sensor">
                                                                    <label class="form-check-label" for="fingerprintSensor">Fingerprint Sensor</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="bluetooth" name="issues[]" value="Bluetooth">
                                                                    <label class="form-check-label" for="bluetooth">Bluetooth</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="cameraDots" name="issues[]" value="Camera-Dots">
                                                                    <label class="form-check-label" for="cameraDots">Camera Dots</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="flashLights" name="issues[]" value="Flash-Lights">
                                                                    <label class="form-check-label" for="flashLights">Flash Lights</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="Other" name="issues[]" value="Other">
                                                                    <label class="form-check-label" for="Other">Other</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                                </fieldset>
                                            </div>
                                            <div class="col-12 pr-3">
                                                <fieldset class="shadow-sm p-3 bg-white">
                                                    <legend>Carrier Information</legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-4 pr-2 mb-2">
                                                            <label for="carrierLock">Carrier Lock/Network Lock:</label>
                                                            <select class="form-control" id="carrierLock" name="is_carrier_lock">
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value="true">Yes</option>
                                                                <option value="false">No</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 pr-2 mb-2" id="ptaOfficial">
                                                            <label for="ptaOfficial">PTA Official:</label>
                                                            <select class="form-control" id="is_pta_official" name="is_pta_official">
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value="true">Yes</option>
                                                                <option value="false">No</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 pr-2 mb-2" id="sim_working">
                                                            <label for="ptaOfficial">Sim Working:</label>
                                                            <select class="form-control" id="is_sim_working" name="is_sim_working">
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value=1>Yes</option>
                                                                <option value=0>No</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 mb-2" id="sim">
                                                            <label for="sim">SIM:</label>
                                                            <select class="form-control" name="sim">
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value="single">Single SIM</option>
                                                                <option value="dual">Dual SIM</option>
                                                                <option value="one-esim">One Physical + One e-SIM</option>
                                                                <!-- Add more SIM options as needed -->
                                                            </select>
                                                        </div>
                                                        <div class="col-4 pr-2 mb-2">
                                                            <label for="warranty">Official Warranty:</label>
                                                            <select class="form-control" id="officialWarranty" name="is_official_warranty">
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value="true">Yes</option>
                                                                <option value="false">No</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 mb-2" id="warrantyMonthsField">
                                                            <label>Warranty Duration</label>
                                                            <select class="form-control"  name="warrantyMonths" >
                                                                <option value="" selected disabled>Please select option</option>
                                                                <option value="1">1 Month</option>
                                                                <option value="2">2 Months</option>
                                                                <option value="3">3 Months</option>
                                                                <option value="4">4 Months</option>
                                                                <option value="5">5 Months</option>
                                                                <option value="6">6 Month</option>
                                                                <option value="7">7 Months</option>
                                                                <option value="8">8 Months</option>
                                                                <option value="9">9 Months</option>
                                                                <option value="10">10 Months</option>
                                                                <option value="11">11 Months</option>
                                                                <option value="12">12 Months</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 pr-2 mb-2">
                                                            <label for="price">Price:</label>
                                                            <input type="text" class="form-control" id="price" name="price">
                                                        </div>
                                                        <div class="col-12">
                                                            <label for="description">Description:</label>
                                                            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="form-section">
                                        <div class="container-fluid">
                                            <h2 class="text-center mb-4">Product Information Form</h2>
                                            <div class="form-section">
                                                <fieldset class="shadow-sm p-3 bg-white">
                                                    <legend>Product Category Form</legend>
                                                    <div class="row no-gutters">
                                                        <div class="col-6 form-group pr-3">
                                                            <label class="mb-0" for="date">Date:</label>
                                                            <input type="date" class="form-control" id="date" name="date">
                                                        </div>
                                                        <div class="col-6 form-group">
                                                            <label class="mb-0" for="no">No.:</label>
                                                            <input type="number" class="form-control" id="no" name="number2" placeholder="Number">
                                                        </div>
                                                        <div class="col-6 form-group pr-3">
                                                            <label class="mb-0" for="category">Category:</label>
                                                            <select class="form-control" id="category" name="category_id_2">
                                                                <option value="" selected disabled>Please Select Category</option>
                                                                @foreach ($categories as $category )
                                                                    <option value="{{ $category->id}}"> {{ $category->en_Category_Name }}</option>
                                                                @endforeach
                                                                <!-- <option value="smartWatch">Smart Watch</option>
                                                                <option value="accessories">Accessories</option>
                                                                <option value="parts">Parts</option> -->
                                                            </select>
                                                        </div>
                                                        <div class="col-6 form-group">
                                                            <label class="mb-0" for="companyModel">Company & Model:</label>
                                                            <input type="text" class="form-control" id="companyModel" name="companyModel" placeholder="Samsung S22 Ultra">
                                                        </div>
                                                        <div class="col-6 form-group pr-3">
                                                            <label class="mb-0" for="partName">Part Name:</label>
                                                            <input type="text" class="form-control" id="partName" name="partName" placeholder="Part Name">
                                                        </div>
                                                        <div class="col-6 form-group">
                                                            <label class="mb-0" for="price">Price:</label>
                                                            <input type="number" class="form-control" id="price2" name="price2" placeholder="Price">
                                                        </div>
                                                        <div class="col-12 form-group">
                                                            <label class="mb-0" for="discountPrice">Discount Price:</label>
                                                            <input type="text" class="form-control" id="discountPrice" name="discountPrice" placeholder="90 USD" readonly>
                                                        </div>
                                                        <div class="col-12 form-group">
                                                            <label class="mb-0" for="description">Description:</label>
                                                            <textarea class="form-control" id="description2" name="description2" placeholder="Description" rows="5"></textarea>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">{{__('Close')}}</button>
                                <button type="submit" class="btn btn-primary">{{ __('Add')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
{{-- Edit Form--}}
<div class="modal fade" id="updateModel" tabindex="-1" role="dialog" aria-labelledby="updateModel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
        <form enctype="multipart/form-data" method="POST" action="{{route('seller.productUpdate')}}">
        @csrf
            <div class="modal-content">
                <div class="modal-header bg-success">
                    <h5 class="modal-title text-white" id="editModalLongTitle">{{__('Edit')}}</h5>
                    <button type="button" class="close text-white" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                    <div class="modal-body">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home2-tab" data-bs-toggle="tab" data-bs-target="#home2" type="button" role="tab" aria-controls="home2" aria-selected="true">Seller Product Form</button>
                            </li>
                            <!-- <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile2-tab" data-bs-toggle="tab" data-bs-target="#profile2" type="button" role="tab" aria-controls="profile2" aria-selected="false">Product Category Form</button>
                            </li>                        -->
                        </ul>
                        <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home2" role="tabpanel" aria-labelledby="home2-tab">
                                    <div class="form-section">
                                        <h2 class="text-center mb-4">Seller Product Form</h2>
                                        <input type="hidden" id="productId" name="productId" value="">
                                        <div class="row no-gutters">
                                                <div class="col-md-12 pr-3">
                                                    <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                        <legend>
                                                            Contact Information
                                                        </legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-6 pr-2">
                                                                <label for="city" class="">City</label>
                                                                <input type="text" class="form-control" id="city2" name="city" placeholder="City" required>
                                                            </div>
                                                            <div class="col-6">
                                                                <label for="no" class="">Contact No</label>
                                                                <input type="text" class="form-control" id="contact2" name="number" placeholder="Contact No" required>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="shadow-sm p-3 bg-white">
                                                        <legend>
                                                            Device Information
                                                        </legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-6 pr-2">
                                                                <label for="category">Category</label>
                                                                <select class="form-control" id="category_id2" name="category_id">
                                                                    <option value="" selected disabled>Please Select Category</option>
                                                                    @foreach ($categories as $category )
                                                                        <option value="{{ $category->id}}"> {{ $category->en_Category_Name }}</option>
                                                                    @endforeach
                                                                    <!-- <option value="mobile">Mobile</option>
                                                                    <option value="tablet">Tablet</option>
                                                                    <option value="ipad">iPad</option> -->
                                                                </select>
                                                            </div>
                                                            <div class="col-6" id="brand_2">
                                                                <label for="brand">Brand</label>
                                                                <select class="form-control" id="brand2" name="brand_id">
                                                                    <option value="" selected disabled>Please Select Brand</option>
                                                                    @foreach ($brands as $brand )
                                                                        <option value="{{ $brand->id}}"> {{ $brand->en_BrandName }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="col-6 pr-2">
                                                                <label for="model">Model</label>
                                                                <input type="text" class="form-control" id="model2" name="model" required>
                                                            </div>
                                                            <div class="col-6">
                                                                <label for="color">Color</label>
                                                                <input type="text" class="form-control" id="color2" name="color">
                                                            </div>
                                                            <div class="col-12">
                                                                <label for="storage">Storage</label>
                                                                <div class="card shadow-sm mb-2">
                                                                    <div class="card-body p-2">
                                                                        <div class="d-flex justify-content-around" id="storage2">
                                                                            <label class="px-1"><input type="radio" name="storage" value="16gb"> 16GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="32gb"> 32GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="64gb"> 64GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="128gb"> 128GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="256gb"> 256GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="512gb"> 512GB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="1tb"> 1TB</label>
                                                                            <label class="px-1"><input type="radio" name="storage" value="other"> Other</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12" id="ram2">
                                                                <label for="ram" class="ram">Memory RAM...</label>
                                                                <div class="card mb-2 ram shadow-sm">
                                                                    <div class="card-body p-2">
                                                                        <div class="d-flex justify-content-around"  id="ramField2">
                                                                            <label class="px-1"><input type="radio" name="ram" value="1gb"> 1GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="2gb"> 2GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="4gb"> 4GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="6gb"> 6GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="8gb"> 8GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="12gb"> 12GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="16gb"> 16GB</label>
                                                                            <label class="px-1"><input type="radio" name="ram" value="other"> other</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 pb-3">
                                                                <label>Body Condition</label>
                                                                <div class="card shadow-sm">
                                                                    <div class="card-body p-2">
                                                                        <div class="form-group d-flex justify-content-around" id="bodyCondition2">
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio" name="bodyCondition" value="A">
                                                                                <label class="form-check-label" for="bodyConditionA">Full Clean</label>
                                                                            </div>
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio" name="bodyCondition" value="B">
                                                                                <label class="form-check-label" for="bodyConditionB">Few Scratches</label>
                                                                            </div>
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio"  name="bodyCondition" value="C">
                                                                                <label class="form-check-label" for="bodyConditionC">Heavy Dents & Scratches</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="text-right col-12 pt-2 d-flex justify-content-end px-0 border-top">
                                                                <input type="file" class="form-control border-0 pl-0" id="image2" name="image" multiple>
                                                            </div>
                                                            <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                                <label for="image_two">{{ __('Image 2') }}</label>
                                                                <input type="file" class="form-control putImage2" name="image_two" id="image_two">
                                                                <!-- <img src="" id="target2" /> -->
                                                                @error('image_two')
                                                                <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                            <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                                <label for="image_three">{{ __('Image 3') }}</label>
                                                                <input type="file" class="form-control putImage3" name="image_three" id="image_three">
                                                                <!-- <img src="" id="target3" /> -->
                                                                @error('image_three')
                                                                <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                            <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                                <label for="image_four">{{ __('Image 4') }}</label>
                                                                <input type="file" class="form-control putImage4" name="image_four" id="image_four">
                                                                <!-- <img src="" id="target4" /> -->
                                                                @error('image_four')
                                                                <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                            <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                                <label for="image_five">{{ __('Image 5') }}</label>
                                                                <input type="file" class="form-control putImage5" name="image_five" id="image_five">
                                                                <!-- <img src="" id="target5" /> -->
                                                                @error('image_five')
                                                                <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-12 pr-3" id="iphone_details2">
                                                    <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                        <legend>
                                                            IPhone Details
                                                        </legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-4 border-right pr-3">
                                                                <div class="">
                                                                    <label class="custom-header">True Tone</label>
                                                                    <div class="form-group" id="is_true_tone2">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" name="is_true_tone" value=1>
                                                                            <label class="form-check-label" for="yes">Yes</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" name="is_true_tone" value=0>
                                                                            <label class="form-check-label" for="no">No</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-4 pl-3 border-right pr-3">
                                                                <label class="custom-header">Message</label>
                                                                <div class="">
                                                                    <div class="form-group row" id="iphone_message2">
                                                                        <div class="form-check col-6 pl-5">
                                                                            <input class="form-check-input" type="checkbox" id="Display-message" name="iphone_message[]" value="Display-message-lcd">
                                                                            <label class="form-check-label" for="Display-message">Display Message</label>
                                                                        </div>
                                                                        <div class="form-check col-6 pl-5">
                                                                            <input class="form-check-input" type="checkbox" id="Camera-message" name="iphone_message[]" value="Dots-spots">
                                                                            <label class="form-check-label" for="Camera-message">Camera Message </label>
                                                                        </div>
                                                                        <div class="form-check col-6 pl-5">
                                                                            <input class="form-check-input" type="checkbox" id="Battery-Message" name="iphone_message[]" value="Battery-Message">
                                                                            <label class="form-check-label" for="Battery-Message">Battery Message</label>
                                                                        </div>
                                                                        <div class="form-check col-6 pl-5">
                                                                            <input class="form-check-input" type="checkbox" id="Battery-service" name="iphone_message[]" value="Shade-Heavy">
                                                                            <label class="form-check-label" for="Battery-service">Battery Service</label>
                                                                        </div>
                                                                        <div class="form-check col-6 pl-5">
                                                                            <input class="form-check-input" type="checkbox" id="none-of-these" name="iphone_message[]" value="none-of-these">
                                                                            <label class="form-check-label" for="none-of-these">None of these</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-4 pl-5">
                                                                <label class="custom-header">Battery Health</label>
                                                                <div class="">
                                                                    <div class="form-group row">
                                                                        <div class="form-group" id="battery_status2">
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio" id="above-85" name="battery_status" value="above-85">
                                                                                <label class="form-check-label" for="above-85">Above 85%</label>
                                                                            </div>
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio" id="below-85" name="battery_status" value="below-85">
                                                                                <label class="form-check-label" for="below-85">Below 85%</label>
                                                                            </div>
                                                                            <div class="form-check">
                                                                                <input class="form-check-input" type="radio" id="battery-service" name="battery_status" value="battery-service">
                                                                                <label class="form-check-label" for="battery-service">Battery Service</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-12 pr-3">
                                                    <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                        <legend>
                                                            Glass Condition
                                                        </legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-12 border-right pr-3">
                                                                <div class="" id="screen_glass2">
                                                                    <div class="form-group row">
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="okGlass" name="screen_glass" value="full-clear">
                                                                            <label class="form-check-label" for="okGlass">Full clean</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="frontGlassBroken" name="screen_glass" value="front-glass-broken">
                                                                            <label class="form-check-label" for="frontGlassBroken">Front Glass Broken</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="FewGlassBroken" name="screen_glass" value="front-glass-broken">
                                                                            <label class="form-check-label" for="FewGlassBroken">Few Screches on Glass</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="HeavyGlassBroken" name="screen_glass" value="heavy-glass-broken">
                                                                            <label class="form-check-label" for="HeavyGlassBroken">Heavy Screches on Glass</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="backGlassBroken" name="screen_glass" value="back-glass-broken">
                                                                            <label class="form-check-label" for="backGlassBroken">Back Glass Broken</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="radio" id="bothSidesBroken" name="screen_glass" value="both-sides-broken">
                                                                            <label class="form-check-label" for="bothSidesBroken">Both Sides Broken</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                        <legend>
                                                            LCD Condition
                                                        </legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-12 pl-3">
                                                                <div class="">
                                                                    <div class="form-group row" id="lcd_condition2">
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="Broken" name="lcd_condition[]" value="broken-lcd">
                                                                            <label class="form-check-label" for="Broken">Broken</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="Dotsspots" name="lcd_condition[]" value="dots-spots">
                                                                            <label class="form-check-label" for="Dotsspots">Dots / spots </label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="Lines" name="lcd_condition[]" value="lines">
                                                                            <label class="form-check-label" for="Lines">Lines</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="ShadeHeavy" name="lcd_condition[]" value="shade-heavy">
                                                                            <label class="form-check-label" for="ShadeHeavy">Shade Heavy</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="Shadelight" name="lcd_condition[]" value="shade-light">
                                                                            <label class="form-check-label" for="Shadelight">Shade light</label>
                                                                        </div>
                                                                        <div class="form-check col-4">
                                                                            <input class="form-check-input" type="checkbox" id="none" name="lcd_condition[]" value="full-clean">
                                                                            <label class="form-check-label" for="none">Full Clean</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset class="shadow-sm p-3 bg-white mb-3">
                                                        <legend>Working Condition</legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-12 mb-2" id="WorkingCondition_2">
                                                                <label for="WorkingCondition" class="mb-3" >Working Status</label>
                                                                <select class="form-control" id="WorkingCondition2" name="WorkingCondition">
                                                                    <option value="" selected disabled>Please select working condition</option>
                                                                    <option value="fullyFunctional">Fully Functional</option>
                                                                    <option value="Issue">Issue</option>
                                                                </select>
                                                            </div>
                                                            <di class=" col-12 " id="Workingissue_2">
                                                                <label for="WorkingCondition" class="custom-header mb-4">Working Issue</label>
                                                                <div class="row no-gutters" id="WorkingIssue2">
                                                                    <div class="col-6 pr-3 border-right">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" name="issues[]" id="batteryIssue" value="Battery-Issue">
                                                                            <label class="form-check-label" for="batteryIssue">Battery Issue</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="chargingIssue" name="issues[]" value="Charging-Issue">
                                                                            <label class="form-check-label" for="chargingIssue">Charging Issue</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="frontCamera" name="issues[]" value="Front-Camera">
                                                                            <label class="form-check-label" for="frontCamera">Front Camera</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="backCamera" name="issues[]" value="Back-Camera">
                                                                            <label class="form-check-label" for="backCamera">Back Camera</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="faceID" name="issues[]" value="Face-ID">
                                                                            <label class="form-check-label" for="faceID">Face ID</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="wibi" name="issues[]" value="Wibi">
                                                                            <label class="form-check-label" for="wibi">Wifi</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="signalDrop" name="issues[]" value="Signal-Drop">
                                                                            <label class="form-check-label" for="signalDrop">Signal Drop</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="buttons" name="issues[]" value="Buttons">
                                                                            <label class="form-check-label" for="buttons">Buttons</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="earpiece" name="issues[]" value="Earpiece">
                                                                            <label class="form-check-label" for="earpiece">Earpiece</label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-6 pl-3">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="vibration" name="issues[]" value="Vibration">
                                                                            <label class="form-check-label" for="vibration">Vibration</label>
                                                                            </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="touchProblem" name="issues[]" value="Touch-Problem">
                                                                            <label class="form-check-label" for="touchProblem">Touch Problem</label>
                                                                        </div>

                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="mouthpiece" name="issues[]" value="Mouthpiece/Mic">
                                                                            <label class="form-check-label" for="mouthpiece">Mouthpiece/Mic</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="speakerSound" name="issues[]" value="Speaker-Sound">
                                                                            <label class="form-check-label" for="speakerSound">Speaker Sound</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="fingerprintSensor" name="issues[]" value="Fingerprint-Sensor">
                                                                            <label class="form-check-label" for="fingerprintSensor">Fingerprint Sensor</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="bluetooth" name="issues[]" value="Bluetooth">
                                                                            <label class="form-check-label" for="bluetooth">Bluetooth</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="cameraDots" name="issues[]" value="Camera-Dots">
                                                                            <label class="form-check-label" for="cameraDots">Camera Dots</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="flashLights" name="issues[]" value="Flash-Lights">
                                                                            <label class="form-check-label" for="flashLights">Flash Lights</label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" id="Other" name="issues[]" value="Other">
                                                                            <label class="form-check-label" for="Other">Other</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-12 pr-3">
                                                    <fieldset class="shadow-sm p-3 bg-white">
                                                        <legend>Carrier Information</legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-4 pr-2 mb-2" id="carrierLock_2">
                                                                <label for="carrierLock">Carrier Lock/Network Lock:</label>
                                                                <select class="form-control" id="carrierLock2" name="is_carrier_lock">
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value=1>Yes</option>
                                                                    <option value=0>No</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-4 pr-2 mb-2" id="ptaOfficial_2">
                                                                <label for="ptaOfficial">PTA Official:</label>
                                                                <select class="form-control" id="is_pta_official2" name="is_pta_official">
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value=1>Yes</option>
                                                                    <option value=0>No</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-4 pr-2 mb-2" id="sim_working2">
                                                                <label for="ptaOfficial">Sim Working:</label>
                                                                <select class="form-control" id="is_sim_working2" name="is_sim_working">
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value=1>Yes</option>
                                                                    <option value=0>No</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-4 mb-2" id="sim_2">
                                                                <label for="sim">SIM:</label>
                                                                <select class="form-control" id="sim2" name="sim">
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value="single">Single SIM</option>
                                                                    <option value="dual">Dual SIM</option>
                                                                    <option value="one-esim">One Physical + One e-SIM</option>
                                                                    <!-- Add more SIM options as needed -->
                                                                </select>
                                                            </div>
                                                            <div class="col-4 pr-2 mb-2" id="officialWarranty_2">
                                                                <label for="warranty">Official Warranty:</label>
                                                                <select class="form-control" id="officialWarranty2" name="is_official_warranty">
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value=1>Yes</option>
                                                                    <option value=0>No</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-4 mb-2" id="warrantyMonthsField_2">
                                                                <label>Warranty Duration</label>
                                                                <select class="form-control" id="warrantyMonthsField2"  name="warrantyMonths" >
                                                                    <option value="" selected disabled>Please select option</option>
                                                                    <option value="1">1 Month</option>
                                                                    <option value="2">2 Months</option>
                                                                    <option value="3">3 Months</option>
                                                                    <option value="4">4 Months</option>
                                                                    <option value="5">5 Months</option>
                                                                    <option value="6">6 Month</option>
                                                                    <option value="7">7 Months</option>
                                                                    <option value="8">8 Months</option>
                                                                    <option value="9">9 Months</option>
                                                                    <option value="10">10 Months</option>
                                                                    <option value="11">11 Months</option>
                                                                    <option value="12">12 Months</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-4 pr-2 mb-2">
                                                                <label for="price">Price:</label>
                                                                <input type="text" class="form-control" id="price_1" name="price" required>
                                                            </div>
                                                            <div class="col-12">
                                                                <label for="description">Description:</label>
                                                                <textarea class="form-control" id="description_1" name="description" rows="3"></textarea>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="profile2" role="tabpanel" aria-labelledby="profile2-tab">
                                        <div class="form-section">
                                            <div class="container-fluid">
                                                <h2 class="text-center mb-4">Product Information Form</h2>
                                                <div class="form-section">
                                                    <fieldset class="shadow-sm p-3 bg-white">
                                                        <legend>Product Category Form</legend>
                                                        <div class="row no-gutters">
                                                            <div class="col-6 form-group pr-3">
                                                                <label class="mb-0" for="date">Date:</label>
                                                                <input type="date" class="form-control" id="date2" name="date">
                                                            </div>
                                                            <div class="col-6 form-group">
                                                                <label class="mb-0" for="no">No.:</label>
                                                                <input type="number" class="form-control" id="number_2" name="number2" placeholder="Number">
                                                            </div>
                                                            <div class="col-6 form-group pr-3">
                                                                <label class="mb-0" for="category">Category:</label>
                                                                <select class="form-control" id="category_2" name="category_id_2">
                                                                    <option value="" selected disabled>Please Select Category</option>
                                                                    @foreach ($categories as $category )
                                                                        <option value="{{ $category->id}}"> {{ $category->en_Category_Name }}</option>
                                                                    @endforeach
                                                                    <!-- <option value="smartWatch">Smart Watch</option>
                                                                    <option value="accessories">Accessories</option>
                                                                    <option value="parts">Parts</option> -->
                                                                </select>
                                                            </div>
                                                            <div class="col-6 form-group">
                                                                <label class="mb-0" for="companyModel">Company & Model:</label>
                                                                <input type="text" class="form-control" id="companyModel2" name="companyModel" placeholder="Samsung S22 Ultra">
                                                            </div>
                                                            <div class="col-6 form-group pr-3">
                                                                <label class="mb-0" for="partName">Part Name:</label>
                                                                <input type="text" class="form-control" id="partName2" name="partName" placeholder="Part Name">
                                                            </div>
                                                            <div class="col-6 form-group">
                                                                <label class="mb-0" for="price">Price:</label>
                                                                <input type="number" class="form-control" id="price_2" name="price2" placeholder="Price">
                                                            </div>
                                                            <div class="col-12 form-group">
                                                                <label class="mb-0" for="discountPrice">Discount Price:</label>
                                                                <input type="text" class="form-control" id="discountPrice2" name="discountPrice" placeholder="90 USD" readonly>
                                                            </div>
                                                            <div class="col-12 form-group">
                                                                <label class="mb-0" for="description">Description:</label>
                                                                <textarea class="form-control" id="description_2" name="description2" placeholder="Description" rows="5"></textarea>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">{{__('Close')}}</button>
                                    <button type="submit" class="btn btn-primary">{{ __('Update')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
<script>
    function editCategory(id) {
        $.ajax({
            url: "{{ url('seller/productEdit/') }}" + "/" + id,
            success: function(data) {
                console.log(data)
                $("#updateModel").modal("show");
                console.log('here it is');
                // Populate modal fields with data
                $("#productId").val(id);
                $("#city2").val(data.city);
                $("#contact2").val(data.number);
                $("#category_id2").val(data.category_id);
                $("#brand2").val(data.brand_id);
                $("#model2").val(data.model);
                $("#color2").val(data.color);
                // $("#storage").val(data.storage);
                $('#storage2 input[type="radio"]').each(function() {
                    if ($(this).val() === data.storage) {
                        $(this).prop('checked', true); // Check the radio button that matches 'data.ram'
                    }
                });
                $('#ramField2 input[type="radio"]').each(function() {
                    if ($(this).val() === data.ram) {
                        $(this).prop('checked', true); // Check the radio button that matches 'data.ram'
                    }
                });
                $('#bodyCondition2 input[type="radio"]').each(function() {
                    if ($(this).val() === data.bodyCondition) {
                        $(this).prop('checked', true); // Check the radio button that matches 'data.ram'
                    }
                });
                // $("#bodyCondition2").val(data.bodyCondition);
                // $("#image2").val(data.image);

                var isTrueTone = (data.is_true_tone === 1);
                $('#is_true_tone2 input[type="radio"]').each(function() {
                    if ($(this).val() === (isTrueTone ? "1" : "0")) {
                        $(this).prop('checked', true); // Check the radio button that matches 'isTrueTone'
                    }
                });
                // $("#is_true_tone2").val(data.is_true_tone);
                $('#iphone_message2 input[type="checkbox"]').each(function() {
                    var checkboxValue = $(this).val();

                    // Check if the checkbox value is included in the 'data.iphone_message' array
                    if (data.iphone_message && data.iphone_message.includes(checkboxValue)) {
                        $(this).prop('checked', true); // Check the checkbox if its value matches any value in 'data.iphone_message'
                    } else {
                        $(this).prop('checked', false); // Uncheck the checkbox if its value is not in 'data.iphone_message'
                    }
                });// Convert array to string
                $('#battery_status2 input[type="radio"]').each(function() {
                    if ($(this).val() === data.battery_status) {
                        $(this).prop('checked', true); // Check the radio button that matches 'data.battery_status'
                    }
                });
                $('#screen_glass2 input[type="radio"]').each(function() {
                    if ($(this).val() === data.screen_glass) {
                        $(this).prop('checked', true); // Check the radio button that matches 'data.battery_status'
                    }
                });

                $('#lcd_condition2 input[type="checkbox"]').each(function() {
                    var checkboxValue = $(this).val();

                    // Check if the checkbox value is included in the 'data.iphone_message' array
                    if (data.lcd_condition && data.lcd_condition.includes(checkboxValue)) {
                        $(this).prop('checked', true); // Check the checkbox if its value matches any value in 'data.iphone_message'
                    } else {
                        $(this).prop('checked', false); // Uncheck the checkbox if its value is not in 'data.iphone_message'
                    }
                });// Convert array to string

                //Till here Done


                // $("#screen_glass").val(data.screen_glass);
                $("#WorkingCondition2").val(data.WorkingCondition);
                $('#WorkingIssue2 input[type="checkbox"]').each(function() {
                    var checkboxValue = $(this).val();
                    // Check if the checkbox value is included in the 'data.iphone_message' array
                    if (data.issues && data.issues.includes(checkboxValue)) {
                        $(this).prop('checked', true); // Check the checkbox if its value matches any value in 'data.iphone_message'
                    } else {
                        $(this).prop('checked', false); // Uncheck the checkbox if its value is not in 'data.iphone_message'
                    }
                });

                // $("#carrierLock2").val(data.is_carrier_lock);

                var isTrueTone = (data.is_true_tone === 1);
                $('#is_true_tone2 input[type="radio"]').each(function() {
                    if ($(this).val() === (isTrueTone ? "1" : "0")) {
                        $(this).prop('checked', true); // Check the radio button that matches 'isTrueTone'
                    }
                });

                var isCarrierLock = (data.is_carrier_lock === 1);

                $("#carrierLock2").val(isCarrierLock ? "1" : "0");

                var isPtaOfficial = (data.is_pta_official === 1);

                $("#is_pta_official2").val(isPtaOfficial ? "1" : "0");

                var isSimWorking = (data.is_sim_working === 1);

                $("#is_sim_working2").val(isSimWorking ? "1" : "0");

                $("#sim2").val(data.sim);

                var isOfficialWarrenty = (data.is_official_warranty === 1);
                $("#officialWarranty2").val(isOfficialWarrenty ? "1" : "0");
                // $("#is_official_warranty").val(data.is_official_warranty);
                $("#warrantyMonthsField2").val(data.warrantyMonths ? data.warrantyMonths.toString() : '');
                $("#price_1").val(data.price);
                $("#description_1").val(data.description);
                $("#date2").val(data.date);
                $("#number_2").val(data.number2);
                $("#category_2").val(data.category_id_2);
                $("#companyModel2").val(data.companyModel);
                $("#partName2").val(data.partName);
                $("#price_2").val(data.price2);
                $("#discountPrice2").val(data.discountPrice);
                $("#description_2").val(data.description2);
                // $("#updateModel").on('shown.bs.modal', function (e) {

                // });
                // Assuming 'data' contains the received object
            }
        })
    }
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Your script -->
<script>
    $(document).ready(function() {
        $('#createModal1').on('shown.bs.modal', function(e) {
            console.log('Modal shown'); // Check if modal shown event is being triggered
            $('#iphone_details').hide();
            $('#Workingissue').hide();
            $('#ptaOfficial').hide();
            $('#sim_working').hide();
            $('#sim').hide();
            $('#warrantyMonthsField').hide();
            $('#isSimWorking').hide();

            // Event listeners inside the modal
            $('#brand, #officialWarranty, #carrierLock, #WorkingCondition, #is_pta_official').on('change', function () {
                var elementId = $(this).attr('id');
                var selectedValue = $(this).val().toLowerCase();

                console.log('in change', elementId, selectedValue);

                switch (elementId) {
                    case 'brand':
                        if (selectedValue === '8') {
                            $('#ram').hide();
                            $('#iphone_details').show();
                        } else {
                            $('#iphone_details').hide();
                            $('#ram').show();
                        }
                        break;
                    case 'officialWarranty':
                        if (selectedValue === 'true') {
                            $('#warrantyMonthsField').show();
                        } else {
                            $('#warrantyMonthsField').hide();
                        }
                        break;
                    case 'carrierLock':
                        if (selectedValue === 'false') {
                            $('#ptaOfficial, #sim').show();
                        } else {
                            $('#ptaOfficial, #sim').hide();
                        }
                        break;
                    case 'WorkingCondition':
                        if (selectedValue !== 'fullyfunctional') {
                            $('#Workingissue').show();
                        } else {
                            $('#Workingissue').hide();
                        }
                        break;
                    case 'is_pta_official':
                        if (selectedValue === 'false') {
                            $('#sim_working').show();
                        } else {
                            $('#sim_working').hide();
                        }
                        break;
                    // Add cases for other elements if needed
                }
            });
        });

        $('#updateModel').on('shown.bs.modal', function(e) {
            console.log('Edit Modal shown'); // Check if modal shown event is being triggered
            $('#Workingissue_2').hide();
            $('#ptaOfficial_2').hide();
            $('#sim_working2').hide();
            $('#sim_2').hide();
            $('#warrantyMonthsField_2').hide();

            // Event listeners inside the edit modal
            $('#brand2, #officialWarranty2, #carrierLock2, #WorkingCondition2, #is_pta_official2').on('change', function () {
                var elementId2 = $(this).attr('id');
                var selectedValue2 = $(this).val();

                console.log('in change', elementId2, selectedValue2);
                switch (elementId2) {
                    case 'brand2':
                        if (selectedValue2 === '8') {
                            $('#ram2').hide();
                            $('#iphone_details2').show();
                        } else {
                            $('#iphone_details2').hide();
                            $('#ram2').show();
                        }
                        break;
                    case 'officialWarranty2':
                        if (selectedValue2 === '1') {
                            $('#warrantyMonthsField_2').show();
                        } else {
                            $('#warrantyMonthsField_2').hide();
                        }
                        break;
                    case 'carrierLock2':
                        if (selectedValue2 === '0') {
                            $('#ptaOfficial_2, #sim_2').show();
                        } else {
                            $('#ptaOfficial_2, #sim_2').hide();
                        }
                        break;
                    case 'WorkingCondition2':
                        if (selectedValue2 === "fullyFunctional") {
                            $('#Workingissue_2').hide();
                            console.log('yes yaa ha', selectedValue2);
                        } else {
                            console.log('yes ab yahan', selectedValue2);
                            $('#Workingissue_2').show();
                        }

                        break;
                    case 'is_pta_official2':
                        if (selectedValue2 === '0') {
                            $('#sim_working2').show();
                        } else {
                            $('#sim_working2').hide();
                        }
                        break;
                    // Add cases for other elements if needed
                }
            });
        });
    });
</script>
