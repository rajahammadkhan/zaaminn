@extends('admin.master', ['menu' => 'products', 'submenu' => 'product'])
@section('title', isset($title) ? $title : '')
@section('content')

<head>
    <style>
        ieldset {
            border: 1px solid #0073ff !important;
            padding: 0 1em 1em 1em !important;
            margin: 0 0 1em 0 !important;
            border-radius: 0.4rem;
        }

        legend {
            width: inherit;
            padding: 0 0.9rem;
            border-bottom: none;
            font-size: 1rem;
            color: #0073ff;
            margin-top: -1.8rem;
            background-color: #fff;
        }
    </style>
</head>
<div class="row">
    <div class="col-md-12">
        <div class="breadcrumb__content">
            <div class="breadcrumb__content__left">
                <div class="breadcrumb__title">
                    <h2>{{ __('Add Product') }}</h2>
                </div>
            </div>
            <div class="breadcrumb__content__right">
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ __('Home') }}</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">{{ __('Product') }}</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="gallery__area bg-style">
            <div class="gallery__content">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">
                        <form enctype="multipart/form-data" method="POST" action="{{ route('admin.product.store') }}">
                            @csrf
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-vertical__item bg-style">
                                        <div class="item-top mb-30">
                                            <h2>{{ langString('en', false) . ':' }}</h2>
                                        </div>
                                        <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                            <legend>
                                                Contact Information
                                            </legend>
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-2">
                                                    <label for="city" class="">City</label>
                                                    <input type="text" class="form-control" id="city2" name="city" placeholder="City">
                                                </div>
                                                <div class="col-6">
                                                    <label for="no" class="">Contact No</label>
                                                    <input type="text" class="form-control" id="contact2" name="number" placeholder="Contact No">
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                            <legend>
                                                Device Information
                                            </legend>
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-2">
                                                    <label for="category">Category</label>
                                                    <select class="form-control" id="en_category_name" name="en_category_name">
                                                        <option value="" selected disabled>Please Select Category</option>
                                                        @foreach ($category as $item)
                                                        <option value="{{ $item->id }}">
                                                            {{ $item->en_Category_Name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                    @error('en_category_name')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="brand">Brand</label>
                                                    <select class="form-control" id="en_brand_name" name="en_brand_name">
                                                        <option value="" selected disabled>Please Select Brand</option>
                                                        @foreach (Brnad() as $item)
                                                        <option value="{{ $item->id }}">{{ $item->en_BrandName }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <input type="hidden" name="product_type" value="{{ PRODUCT_PHYSICAL }}">
                                                <div class="col-6 pr-2">
                                                    <label for="model">Model</label>
                                                    <input type="text" class="form-control" id="en-product-name" name="en_product_name" value="{{ old('en_product_name') }}" placeholder="Name">
                                                    @error('en_product_name')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="color">Color</label>
                                                    <input type="text" class="form-control" id="color" name="en_product_color" value="{{ old('en_product_color') }}" placeholder="Color">

                                                    <!--<select class="select2-multiple form-control tag_two" name="color[]" multiple="multiple">-->
                                                    <!--    @foreach (productColor() as $item)-->
                                                    <!--    <option value="{{ $item->id }}">{{ $item->Name }}</option>-->
                                                    <!--    @endforeach-->
                                                    <!--</select>-->
                                                    @error('color')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <!--<div class="col-6">-->
                                                <!--    <label for="en-product-slug">{{ __('Product Slug') }}</label>-->
                                                <!--    <input type="text" class="form-control" id="en-product-slug" name="en_product_slug" value="{{ old('en_product_slug') }}" placeholder="Slug">-->
                                                <!--    @error('en_product_slug')-->
                                                <!--    <span class="text-danger">{{ $message }}</span>-->
                                                <!--    @enderror-->
                                                <!--</div>-->
                                                <!--<div class="col-6">-->
                                                <!--    <label for="exampleInputEmail1">{{ __('Item Tag') }}</label>-->
                                                <!--    <select class="form-control" id="item_teg" name="item_teg">-->
                                                <!--        <option value="">{{ __('---Select item---') }}</option>-->
                                                <!--        @foreach ($item_tags as $it)-->
                                                <!--        <option value="{{ $it->name }}">{{ $it->name }}</option>-->
                                                <!--        @endforeach-->
                                                <!--    </select>-->
                                                <!--    @error('item_teg')-->
                                                <!--    <span class="text-danger">{{ $message }}</span>-->
                                                <!--    @enderror-->
                                                <!--</div>-->
                                                <!--<div class="col-6">-->
                                                <!--    <label for="select2Multiple">{{ __('Product Tag') }}</label>-->
                                                <!--    <select class="select2-multiple form-control tag_two" name="product_tag[]" multiple="multiple">-->
                                                <!--        @foreach ($tags as $tag)-->
                                                <!--        <option value="{{ $tag->name }}">{{ $tag->name }}</option>-->
                                                <!--        @endforeach-->
                                                <!--    </select>-->
                                                <!--    @error('product_tag')-->
                                                <!--    <span class="text-danger">{{ $message }}</span>-->
                                                <!--    @enderror-->
                                                <!--</div>-->
                                                <!--<div class="col-6">-->
                                                <!--    <label for="select2Multiple">{{ __('Product Size') }}</label>-->
                                                <!--    <select class="select2-multiple form-control tag_one" name="size[]" multiple="multiple">-->
                                                <!--        @foreach (productSize() as $item)-->
                                                <!--        <option value="{{ $item->id }}">{{ $item->Size }}</option>-->
                                                <!--        @endforeach-->
                                                <!--    </select>-->
                                                <!--    @error('size')-->
                                                <!--    <span class="text-danger">{{ $message }}</span>-->
                                                <!--    @enderror-->
                                                <!--</div>-->
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
                                                            <div class="d-flex justify-content-around" id="ramField">
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
                                                                    <input class="form-check-input" type="radio" name="bodyCondition" value="C">
                                                                    <label class="form-check-label" for="bodyConditionC">Heavy Dents & Scratches</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="primary_image">{{ __('Primary Image') }}</label><br>
                                                    <input type="file" class="form-control" name="primary_image" id="primary_image">
                                                    <!-- <img src="" id="target1" /> -->
                                                    @error('primary_image')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
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
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
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
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
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
                                                                    <input class="form-check-input" type="checkbox" id="None" name="lcd_condition[]" value="full-clean">
                                                                    <label class="form-check-label" for="None">Full Clean</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                                <legend>Working Condition</legend>
                                                <div class="row no-gutters">
                                                    <div class="col-12 mb-2">
                                                        <label for="WorkingCondition" class="mb-3">Working Status</label>
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
                                                                    <input class="form-check-input" type="checkbox" id="wibi" name="issues[]" value="Wifi">
                                                                    <label class="form-check-label" for="wifi">Wifi</label>
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
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                                <legend>Carrier Information</legend>
                                                <div class="row no-gutters">
                                                    <div class="col-4 pr-2 mb-2">
                                                        <label for="carrierLock">Carrier Lock/Network Lock:</label>
                                                        <select class="form-control" id="carrierLock" name="is_carrier_lock">
                                                            <option value="" selected disabled>Please select option</option>
                                                            <option value="1">Yes</option>
                                                            <option value="0">No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2" id="ptaOfficial">
                                                        <label for="ptaOfficial">PTA Official:</label>
                                                        <select class="form-control" id="is_pta_official" name="is_pta_official">
                                                            <option value="" selected disabled>Please select option</option>
                                                            <option value="1">Yes</option>
                                                            <option value="0">No</option>
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
                                                            <option value="1">Yes</option>
                                                            <option value="0">No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 mb-2" id="warrantyMonthsField">
                                                        <label>Warranty Duration</label>
                                                        <select class="form-control" name="warrantyMonths">
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
                                                        <label for="price">{{ __('Price') }}</label>
                                                        <input type="number" min="0" class="form-control" id="price" name="price" value="{{ old('price') }}" placeholder="Price">
                                                        @error('price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    {{-- <div class="col-4 pr-2 mb-2">
                                                        <label for="qty">{{ __('Quantity') }}</label>
                                                        <input type="text" class="form-control" id="qty" name="qty" value="{{ old('qty') }}" placeholder="Quantity">
                                                        @error('qty')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div> --}}
                                                    {{-- <div class="col-4 pr-2 mb-2">
                                                        <label for="discount">{{ __('Discount (in Percentage)') }}</label>
                                                        <input type="number" class="form-control" id="discount" name="discount" value="{{ old('discount') ?? 0 }}" placeholder="Discount">
                                                        @error('discount')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div> --}}
                                                    {{-- <div class="col-4 pr-2 mb-2">
                                                        <label for="discount_price">{{ __('Discount Price') }}</label>
                                                        <input type="number" class="form-control" id="discount_price" name="discount_price" value="{{ old('discount_price') }}" readonly>
                                                        @error('discount_price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" name="status" class="custom-control-input" id="customSwitch1">
                                                        <label class="custom-control-label" for="customSwitch1">{{ __('Status') }}</label>
                                                        @error('status')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" value="1" name="feature" class="custom-control-input" id="customSwitch2">
                                                            <label class="custom-control-label" for="customSwitch2">{{ __('Featured Product') }}</label>
                                                        </div>
                                                        @error('feature')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" value="1" name="best_sale" class="custom-control-input" id="customSwitch3">
                                                            <label class="custom-control-label" for="customSwitch3">{{ __('Best Selling') }}</label>
                                                        </div>
                                                        @error('best_sale')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" value="1" name="on_sale" class="custom-control-input" id="customSwitch4">
                                                            <label class="custom-control-label" for="customSwitch4">{{ __('On Sale') }}</label>
                                                        </div>
                                                        @error('on_sale')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <div class="custom-control custom-switch">
                                                            <input type="checkbox" value="1" name="on_arrival" class="custom-control-input" id="customSwitch5">
                                                            <label class="custom-control-label" for="customSwitch5">{{ __('New Arrival') }}</label>
                                                        </div>
                                                        @error('on_arrival')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div> --}}
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="col-12 pr-3">
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                                <legend>Descriptions</legend>
                                                <div class="row no-gutters">
                                                    {{-- <div class="col-12">
                                                        <label for="en_about">{{ __('About') }}</label>
                                                        <textarea name="en_about" id="en_about" class="form-control" placeholder="About">{{ old('en_about') }}</textarea>
                                                        @error('en_about')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div> --}}
                                                    <div class="col-12">
                                                        <label for="en_description">{{ __('Description') }}</label>
                                                        <textarea name="en_description" id="summernote" class="form-control" placeholder="Description">{{ old('en_description') }}</textarea>
                                                        @error('en_description')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    {{-- <div class="col-12">
                                                        <label for="en_shippingreturn">{{ __('Shipping Return') }}</label>
                                                        <textarea name="en_shippingreturn" id="summernote2" class="form-control" placeholder="Shipping Return">{{ old('en_shippingreturn') }}</textarea>
                                                        @error('en_shippingreturn')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="en_additionalinformation">{{ __('Additional Information') }}</label>
                                                        <textarea name="en_additionalinformation" id="summernote3" class="form-control">{{ old('en_additionalinformation') }}</textarea>
                                                        @error('en_additionalinformation')
                                                        <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div> --}}
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="input__button">
                                            <button type="submit" class="btn btn-blue">{{ __('Add') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

@endsection
@push('post_scripts')
<script src="{{ asset('backend/js/admin/products/physical-add.js') }}"></script>
<script>
    "use strict";
    $(document).ready(function() {
        $("#summernote").summernote({
            placeholder: 'Description',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });

    $(document).ready(function() {
        $("#summernote2").summernote({
            placeholder: 'Shipping Return',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });
    $(document).ready(function() {
        $("#summernote3").summernote({
            placeholder: 'Additional Information',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });
    $(document).ready(function() {
        $("#summernote4").summernote({
            placeholder: 'Description',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });

    $(document).ready(function() {
        $("#summernote5").summernote({
            placeholder: 'Shipping Return',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });
    $(document).ready(function() {
        $("#summernote6").summernote({
            placeholder: 'Additional Information',
            height: 300
        });
        $('.dropdown-toggle').dropdown();
    });
    $(document).ready(function() {
        $('#iphone_details').hide();
        $('#Workingissue').hide();
        $('#ptaOfficial').hide();
        $('#sim_working').hide();
        $('#sim').hide();
        $('#warrantyMonthsField').hide();

        // Event listeners inside the modal
        $('#en_brand_name, #officialWarranty, #carrierLock, #WorkingCondition, #is_pta_official').on('change', function() {
            var elementId = $(this).attr('id');
            var selectedValue = $(this).val().toLowerCase();

            console.log('in change', elementId, selectedValue);

            switch (elementId) {
                case 'en_brand_name':
                    if (selectedValue === '8') {
                        $('#ram').hide();
                        $('#iphone_details').show();
                    } else {
                        $('#iphone_details').hide();
                        $('#ram').show();
                    }
                    break;
                case 'officialWarranty':
                    if (selectedValue === '1') {
                        $('#warrantyMonthsField').show();
                    } else {
                        $('#warrantyMonthsField').hide();
                    }
                    break;
                case 'carrierLock':
                    if (selectedValue === '0') {
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
                    if (selectedValue === '0') {
                        $('#sim_working').show();
                    } else {
                        $('#sim_working').hide();
                    }
                    break;
                    // Add cases for other elements if needed
            }
        });
    });
</script>

@endpush