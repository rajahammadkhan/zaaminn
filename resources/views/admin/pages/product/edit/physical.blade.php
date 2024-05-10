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
                    <h2>{{ __('Edit Product') }}</h2>
                </div>
            </div>
            <div class="breadcrumb__content__right">
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ __('Home') }}</a></li>
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
                        <form enctype="multipart/form-data" method="POST" action="{{ route('admin.product.update') }}">
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
                                                    <input type="text" class="form-control" id="city2" name="city" value="{{ $product->city }}" placeholder="City">
                                                </div>
                                                <div class="col-6">
                                                    <label for="no" class="">Contact No</label>
                                                    <input type="text" class="form-control" id="contact2" name="number" value="{{ $product->number }}" placeholder="Contact No">
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
                                                    <input type="hidden" name="product_type" value="{{ PRODUCT_PHYSICAL }}">
                                                    <input type="hidden" name="id" value="{{ $product->id }}">
                                                    <select class="form-control" id="en_category_name" name="en_category_name">
                                                        <option value="" selected disabled>Please Select Category</option>
                                                        @foreach (Category() as $item)
                                                        <option value="{{ $item->id }}" {{ $item->id == $product->Category_Id ? 'selected' : '' }}>
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
                                                        <option value="{{ $item->id }}" {{ $item->id == $product->Brand_Id ? 'selected' : '' }}>
                                                            {{ $item->en_BrandName }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <input type="hidden" name="product_type" value="{{ PRODUCT_PHYSICAL }}">
                                                <div class="col-6 pr-2">
                                                    <label for="model">Model</label>
                                                    <input type="text" class="form-control" id="en_product_name" name="en_product_name" value="{{ $product->en_Product_Name }}" placeholder="{{ __('Name') }}">
                                                    @error('en_product_name')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="color">Color</label>
                                                    <select class="select2-multiple form-control tag_two" name="color[]" multiple="multiple">
                                                        @foreach ($colors as $item)
                                                        <option value="{{ $item->id }}" {{ colorSelected($product->id, $item->id) == 1 ? 'selected' : '' }}>
                                                            {{ $item->Name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                    @error('color')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="en-product-slug">{{ __('Product Slug') }}</label>
                                                    <input type="text" class="form-control" id="en-product-slug" name="en_product_slug" value="{{ old('en_product_slug') }}" placeholder="Slug">
                                                    @error('en_product_slug')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="exampleInputEmail1">{{ __('Item Tag') }}</label>
                                                    <select class="form-control" id="item_teg" name="item_teg">
                                                        <option value="">{{ __('---Select item---') }}</option>
                                                        @foreach ($item_tags as $it)
                                                        <option value="{{ $it->name }}" {{ $it->name == $product->ItemTag ? 'selected' : '' }}>
                                                            {{ $it->name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                    @error('item_teg')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="select2Multiple">{{ __('Product Tag') }}</label>
                                                    <select class="select2-multiple form-control tag_two" name="product_tag[]" multiple="multiple">
                                                        @foreach ($tags as $tag)
                                                        <option value="{{ $tag->name }}" {{ selectProductTag($tag->name, $product->id) }}>
                                                            {{ $tag->name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                    @error('product_tag')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-6">
                                                    <label for="select2Multiple">{{ __('Product Size') }}</label>
                                                    <select class="select2-multiple form-control tag_one" name="size[]" multiple="multiple">
                                                        @foreach ($sizes as $item)
                                                        <option value="{{ $item->id }}" {{ sizeSelected($product->id, $item->id) == 1 ? 'selected' : '' }}>
                                                            {{ $item->Size }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                    @error('size')
                                                    <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                </div>
                                                <div class="col-12">
                                                    <label for="storage">Storage</label>
                                                    <div class="card shadow-sm mb-2">
                                                        <div class="card-body p-2">
                                                            <div class="d-flex justify-content-around">
                                                                <label class="px-1"><input type="radio" name="storage" value="16gb" {{ $product->storage == '16gb' ? 'checked' : '' }}> 16GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="32gb" {{ $product->storage == '32gb' ? 'checked' : '' }}> 32GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="64gb" {{ $product->storage == '64gb' ? 'checked' : '' }}> 64GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="128gb" {{ $product->storage == '128gb' ? 'checked' : '' }}> 128GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="256gb" {{ $product->storage == '256gb' ? 'checked' : '' }}> 256GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="512gb" {{ $product->storage == '512gb' ? 'checked' : '' }}> 512GB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="1tb" {{ $product->storage == '1tb' ? 'checked' : '' }}> 1TB</label>
                                                                <label class="px-1"><input type="radio" name="storage" value="other" {{ $product->storage == 'other' ? 'checked' : '' }}> Other</label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12" id="ram">
                                                    <label for="ram" class="ram">Memory RAM</label>
                                                    <div class="card mb-2 ram shadow-sm">
                                                        <div class="card-body p-2">
                                                            <div class="d-flex justify-content-around" id="ramField">
                                                                <label class="px-1"><input type="radio" name="ram" value="1gb" {{ $product->ram == '1gb' ? 'checked' : '' }}> 1GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="2gb" {{ $product->ram == '2gb' ? 'checked' : '' }}> 2GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="4gb" {{ $product->ram == '4gb' ? 'checked' : '' }}> 4GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="6gb" {{ $product->ram == '6gb' ? 'checked' : '' }}> 6GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="8gb" {{ $product->ram == '8gb' ? 'checked' : '' }}> 8GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="12gb" {{ $product->ram == '12gb' ? 'checked' : '' }}> 12GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="16gb" {{ $product->ram == '16gb' ? 'checked' : '' }}> 16GB</label>
                                                                <label class="px-1"><input type="radio" name="ram" value="other" {{ $product->ram == 'other' ? 'checked' : '' }}> Other</label>
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
                                                                    <input class="form-check-input" type="radio" name="bodyCondition" value="A" {{ $product->bodyCondition == 'A' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="bodyConditionA">Full Clean</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="bodyCondition" value="B" {{ $product->bodyCondition == 'B' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="bodyConditionB">Few Scratches</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="bodyCondition" value="C" {{ $product->bodyCondition == 'C' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="bodyConditionC">Heavy Dents & Scratches</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="exampleInputEmail1">{{ __('Primary Image') }}</label>
                                                    <input type="file" class="form-control putImage1" name="primary_image" id="primary_image">
                                                    <img class="admin_image" src="{{ asset(ProductImage() . $product->Primary_Image) }}" id="target1" />
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="exampleInputEmail1">{{ __('Image 2') }}</label>
                                                    <input type="file" class="form-control putImage2" name="image_two" id="image_two">
                                                    <img class="admin_image" src="{{ asset(ProductImage() . $product->Image2) }}" id="target2" />
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="exampleInputEmail1">{{ __('Image Gallery Image') }}</label>
                                                    <input type="file" class="form-control putImage3" name="image_three" id="image_three">
                                                    <img class="admin_image" src="{{ asset(ProductImage() . $product->Image3) }}" id="target3" />
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="exampleInputEmail1">{{ __('Image 3') }}</label>
                                                    <input type="file" class="form-control putImage4" name="image_four" id="image_four">
                                                    <img class="admin_image" src="{{ asset(ProductImage() . $product->Image4) }}" id="target4" />
                                                </div>
                                                <div class="text-right col-4 pt-2 justify-content-end px-2">
                                                    <label for="exampleInputEmail1">{{ __('Image 4') }}</label>
                                                    <input type="file" class="form-control putImage5" name="image_five" id="image_five">
                                                    <img class="admin_image" src="{{ asset(ProductImage() . $product->Image5) }}" id="target5" />
                                                </div>
                                            </div>
                                        </fieldset>
                                        <div class="col-md-12 pr-3" id="iphone_details">
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                                <legend>
                                                    IPhone Details
                                                </legend>
                                                <div class="row no-gutters">
                                                    <div class="col-4 border-right pr-3">
                                                        <div class="">
                                                            <label class="custom-header">True Tone</label>
                                                            <div class="form-group">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" id="yes" name="is_true_tone" value="1" {{ $product->is_true_tone == '1' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="yes">Yes</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" id="no" name="is_true_tone" value="0" {{ $product->is_true_tone == '0' ? 'checked' : '' }}>
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
                                                                    <input class="form-check-input" type="checkbox" id="Display-message" name="iphone_message[]" value="Display-message-lcd" {{ is_array($product->iphone_message) && in_array('Display-message-lcd', $product->iphone_message) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Display-message">Display Message</label>
                                                                </div>
                                                                <div class="form-check col-6 pl-5">
                                                                    <input class="form-check-input" type="checkbox" id="Camera-message" name="iphone_message[]" value="Dots-spots" {{ is_array($product->iphone_message) && in_array('Dots-spots', $product->iphone_message) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Camera-message">Camera Message </label>
                                                                </div>
                                                                <div class="form-check col-6 pl-5">
                                                                    <input class="form-check-input" type="checkbox" id="Battery-Message" name="iphone_message[]" value="Battery-Message" {{ is_array($product->iphone_message) && in_array('Battery-Message', $product->iphone_message) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Battery-Message">Battery Message</label>
                                                                </div>
                                                                <div class="form-check col-6 pl-5">
                                                                    <input class="form-check-input" type="checkbox" id="Battery-service" name="iphone_message[]" value="Shade-Heavy" {{ is_array($product->iphone_message) && in_array('Shade-Heavy', $product->iphone_message) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Battery-service">Battery Service</label>
                                                                </div>
                                                                <div class="form-check col-6 pl-5">
                                                                    <input class="form-check-input" type="checkbox" id="none-of-these" name="iphone_message[]" value="none-of-these" {{ is_array($product->iphone_message) && in_array('none-of-these', $product->iphone_message) ? 'checked' : '' }}>
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
                                                                        <input class="form-check-input" type="radio" id="above-85" name="battery_status" value="above-85" {{ $product->battery_status == 'above-85' ? 'checked' : '' }}>
                                                                        <label class="form-check-label" for="above-85">Above 85%</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" id="below-85" name="battery_status" value="below-85" {{ $product->battery_status == 'below-85' ? 'checked' : '' }}>
                                                                        <label class="form-check-label" for="below-85">Below 85%</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" id="battery-service" name="battery_status" value="battery-service" {{ $product->battery_status == 'battery-service' ? 'checked' : '' }}>
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
                                                                    <input class="form-check-input" type="radio" id="okGlass" name="screen_glass" value="full-clear" {{ $product->screen_glass == 'full-clear' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="okGlass">Full clean</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="radio" id="frontGlassBroken" name="screen_glass" value="front-glass-broken" {{ $product->screen_glass == 'front-glass-broken' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="frontGlassBroken">Front Glass Broken</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="radio" id="FewGlassBroken" name="screen_glass" value="few-scratches" {{ $product->screen_glass == 'few-scratches' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="FewGlassBroken">Few Scratches on Glass</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="radio" id="HeavyGlassBroken" name="screen_glass" value="heavy-glass-broken" {{ $product->screen_glass == 'heavy-glass-broken' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="HeavyGlassBroken">Heavy Scratches on Glass</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="radio" id="backGlassBroken" name="screen_glass" value="back-glass-broken" {{ $product->screen_glass == 'back-glass-broken' ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="backGlassBroken">Back Glass Broken</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="radio" id="bothSidesBroken" name="screen_glass" value="both-sides-broken" {{ $product->screen_glass == 'both-sides-broken' ? 'checked' : '' }}>
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
                                                                    <input class="form-check-input" type="checkbox" id="Broken" name="lcd_condition[]" value="broken-lcd" {{is_array($product->lcd_condition) &&  in_array('broken-lcd', $product->lcd_condition) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Broken">Broken</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="checkbox" id="Dotsspots" name="lcd_condition[]" value="dots-spots" {{is_array($product->lcd_condition) && in_array('dots-spots', $product->lcd_condition) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Dotsspots">Dots / spots </label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="checkbox" id="Lines" name="lcd_condition[]" value="lines" {{is_array($product->lcd_condition) && in_array('lines', $product->lcd_condition) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Lines">Lines</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="checkbox" id="ShadeHeavy" name="lcd_condition[]" value="shade-heavy" {{is_array($product->lcd_condition) && in_array('shade-heavy', $product->lcd_condition) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="ShadeHeavy">Shade Heavy</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="checkbox" id="Shadelight" name="lcd_condition[]" value="shade-light" {{is_array($product->lcd_condition) && in_array('shade-light', $product->lcd_condition) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="Shadelight">Shade light</label>
                                                                </div>
                                                                <div class="form-check col-4">
                                                                    <input class="form-check-input" type="checkbox" id="None" name="lcd_condition[]" value="full-clean" {{ is_array($product->lcd_condition) && in_array('No', $product->lcd_condition) ? 'checked' : '' }}>
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
                                                            <option value="" disabled>Please select working condition</option>
                                                            <option value="fullyFunctional" {{ $product->WorkingCondition == 'fullyFunctional' ? 'selected' : '' }}>Fully Functional</option>
                                                            <option value="Issue" {{ $product->WorkingCondition == 'Issue' ? 'selected' : '' }}>Issue</option>
                                                        </select>
                                                    </div>
                                                    <div class=" col-12 " id="Workingissue">
                                                        <label for="WorkingCondition" class="custom-header mb-4">Working Issue</label>
                                                        <div class="row no-gutters">
                                                            <div class="col-6 pr-3 border-right">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" name="issues[]" id="batteryIssue" value="Battery-Issue" {{is_array($product->issues) && in_array('Battery-Issue', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="batteryIssue">Battery Issue</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="chargingIssue" name="issues[]" value="Charging-Issue" {{ is_array($product->issues) && in_array('Charging-Issue', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="chargingIssue">Charging Issue</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="frontCamera" name="issues[]" value="Front-Camera" {{ is_array($product->issues) && in_array('Front-Camera', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="frontCamera">Front Camera</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="backCamera" name="issues[]" value="Back-Camera" {{ is_array($product->issues) && in_array('Back-Camera', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="backCamera">Back Camera</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="faceID" name="issues[]" value="Face-ID" {{ is_array($product->issues) && in_array('Face-ID', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="faceID">Face ID</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="wifi" name="issues[]" value="Wifi" {{ is_array($product->issues) && in_array('Wifi', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="wifi">Wifi</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="signalDrop" name="issues[]" value="Signal-Drop" {{ is_array($product->issues) && in_array('Signal-Drop', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="signalDrop">Signal Drop</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="buttons" name="issues[]" value="Buttons" {{ is_array($product->issues) && in_array('Buttons', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="buttons">Buttons</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="earpiece" name="issues[]" value="Earpiece" {{ is_array($product->issues) && in_array('Earpiece', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="earpiece">Earpiece</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-6 pl-3">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="vibration" name="issues[]" value="Vibration" {{ is_array($product->issues) && in_array('Vibration', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="vibration">Vibration</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="touchProblem" name="issues[]" value="Touch-Problem" {{ is_array($product->issues) && in_array('Touch-Problem', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="touchProblem">Touch Problem</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="mouthpiece" name="issues[]" value="Mouthpiece/Mic" {{ is_array($product->issues) && in_array('Mouthpiece/Mic', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="mouthpiece">Mouthpiece/Mic</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="speakerSound" name="issues[]" value="Speaker-Sound" {{ is_array($product->issues) && in_array('Speaker-Sound', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="speakerSound">Speaker Sound</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="fingerprintSensor" name="issues[]" value="Fingerprint-Sensor" {{ is_array($product->issues) && in_array('Fingerprint-Sensor', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="fingerprintSensor">Fingerprint Sensor</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="bluetooth" name="issues[]" value="Bluetooth" {{ is_array($product->issues) && in_array('Bluetooth', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="bluetooth">Bluetooth</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="cameraDots" name="issues[]" value="Camera-Dots" {{ is_array($product->issues) && in_array('Camera-Dots', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="cameraDots">Camera Dots</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="flashLights" name="issues[]" value="Flash-Lights" {{ is_array($product->issues) && in_array('Flash-Lights', $product->issues) ? 'checked' : '' }}>
                                                                    <label class="form-check-label" for="flashLights">Flash Lights</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="Other" name="issues[]" value="Other" {{ is_array($product->issues) && in_array('Other', $product->issues) ? 'checked' : '' }}>
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
                                                            <option value="" disabled>Please select option</option>
                                                            <option value="1" {{ $product->is_carrier_lock == '1' ? 'selected' : '' }}>Yes</option>
                                                            <option value="0" {{ $product->is_carrier_lock == '0' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2" id="ptaOfficial">
                                                        <label for="ptaOfficial">PTA Official:</label>
                                                        <select class="form-control" id="is_pta_official" name="is_pta_official">
                                                            <option value="" disabled>Please select option</option>
                                                            <option value="1" {{ $product->is_pta_official == '1' ? 'selected' : '' }}>Yes</option>
                                                            <option value="0" {{ $product->is_pta_official == '0' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2" id="sim_working">
                                                        <label for="ptaOfficial">Sim Working:</label>
                                                        <select class="form-control" id="is_sim_working" name="is_sim_working">
                                                            <option value="" selected disabled>Please select option</option>
                                                            <option value=1 {{ $product->is_sim_working == '1' ? 'selected' : '' }}>Yes</option>
                                                            <option value=0 {{ $product->is_sim_working == '0' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 mb-2" id="sim">
                                                        <label for="sim">SIM:</label>
                                                        <select class="form-control" name="sim">
                                                            <option value="" disabled>Please select option</option>
                                                            <option value="single" {{ $product->sim == 'single' ? 'selected' : '' }}>Single SIM</option>
                                                            <option value="dual" {{ $product->sim == 'dual' ? 'selected' : '' }}>Dual SIM</option>
                                                            <option value="one-esim" {{ $product->sim == 'one-esim' ? 'selected' : '' }}>One Physical + One e-SIM</option>
                                                            <!-- Add more SIM options as needed -->
                                                        </select>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2">
                                                        <label for="warranty">Official Warranty:</label>
                                                        <select class="form-control" id="officialWarranty" name="is_official_warranty">
                                                            <option value="" disabled>Please select option</option>
                                                            <option value="1" {{ $product->is_official_warranty == '1' ? 'selected' : '' }}>Yes</option>
                                                            <option value="0" {{ $product->is_official_warranty == '0' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 mb-2" id="warrantyMonthsField">
                                                        <label>Warranty Duration</label>
                                                        <select class="form-control" name="warrantyMonths">
                                                            <option value="" disabled>Please select option</option>
                                                            <option value="1" {{ $product->warrantyMonths == '1' ? 'selected' : '' }}>1 Month</option>
                                                            <option value="2" {{ $product->warrantyMonths == '2' ? 'selected' : '' }}>2 Months</option>
                                                            <option value="3" {{ $product->warrantyMonths == '3' ? 'selected' : '' }}>3 Months</option>
                                                            <option value="4" {{ $product->warrantyMonths == '4' ? 'selected' : '' }}>4 Months</option>
                                                            <option value="5" {{ $product->warrantyMonths == '5' ? 'selected' : '' }}>5 Months</option>
                                                            <option value="6" {{ $product->warrantyMonths == '6' ? 'selected' : '' }}>6 Months</option>
                                                            <option value="7" {{ $product->warrantyMonths == '7' ? 'selected' : '' }}>7 Months</option>
                                                            <option value="8" {{ $product->warrantyMonths == '8' ? 'selected' : '' }}>8 Months</option>
                                                            <option value="9" {{ $product->warrantyMonths == '9' ? 'selected' : '' }}>9 Months</option>
                                                            <option value="10" {{ $product->warrantyMonths == '10' ? 'selected' : '' }}>10 Months</option>
                                                            <option value="11" {{ $product->warrantyMonths == '11' ? 'selected' : '' }}>11 Months</option>
                                                            <option value="12" {{ $product->warrantyMonths == '12' ? 'selected' : '' }}>12 Months</option>
                                                        </select>

                                                    </div>
                                                    <div class="col-4 pr-2 mb-2">
                                                        <label for="exampleInputEmail1">{{ __('Price') }}</label>
                                                        <input type="text" class="form-control" id="price" name="price" value="{{ $product->Price }}">
                                                    </div>
                                                    {{-- <div class="col-4 pr-2 mb-2">
                                                        <label for="exampleInputEmail1">{{ __('Quantity') }}</label>
                                                        <input type="text" class="form-control" id="qty" name="qty" value="{{ $product->Quantity }}">
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2">
                                                        <label for="exampleInputEmail1">{{ __('Discount (in Percentage)') }}</label>
                                                        <input type="text" class="form-control" id="discount" name="discount" value="{{ $product->Discount }}">
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2">
                                                        <label for="exampleInputEmail1">{{ __('Discount Price') }}</label>
                                                        <input type="text" class="form-control" value="{{ $product->Discount_Price }}" id="discount_price" name="discount_price" readonly>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" {{ $product->Status == 1 ? 'checked' : '' }} name="status" class="custom-control-input" id="customSwitch1">
                                                        <label class="custom-control-label" for="customSwitch1">{{ __('Status') }}</label>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" {{ $product->Featured_Product == 1 ? 'checked' : '' }} name="feature" class="custom-control-input" id="customSwitch2">
                                                        <label class="custom-control-label" for="customSwitch2">{{ __('Featured Product') }}</label>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" {{ $product->Best_Selling == 1 ? 'checked' : '' }} name="best_sale" class="custom-control-input" id="customSwitch3">
                                                        <label class="custom-control-label" for="customSwitch3">{{ __('Best Selling') }}</label>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" {{ $product->On_Sale == 1 ? 'checked' : '' }} name="on_sale" class="custom-control-input" id="customSwitch4">
                                                        <label class="custom-control-label" for="customSwitch4">{{ __('On Sale') }}</label>
                                                    </div>
                                                    <div class="col-4 pr-2 mb-2 py-3">
                                                        <input type="checkbox" value="1" {{ $product->New_Arrival == 1 ? 'checked' : '' }} name="on_arrival" class="custom-control-input" id="customSwitch5">
                                                        <label class="custom-control-label" for="customSwitch5">{{ __('New Arrival') }}</label>
                                                    </div> --}}
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="col-12 pr-3">
                                            <fieldset class="shadow-sm p-3 bg-white mb-3 border rounded border-info">
                                                <legend>Descriptions</legend>
                                                <div class="row no-gutters">
                                                    {{-- <div class="col-12">
                                                        <label for="exampleInputEmail1">{{ __('About') }}</label>
                                                        <textarea name="en_about" id="en_about" class="form-control">{!! $product->en_About !!}</textarea>
                                                    </div> --}}
                                                    <div class="col-12">
                                                        <label for="exampleInputEmail1">{{ __('Description') }}</label>
                                                        <textarea name="en_description" id="summernote" class="form-control">{!! $product->en_Description !!}</textarea>
                                                    </div>
                                                    {{-- <div class="col-12">
                                                        <label for="exampleInputEmail1">{{ __('ShippingReturn') }}</label>
                                                        <textarea name="en_shippingreturn" id="summernote2" class="form-control">{!! $product->en_ShippingReturn !!}</textarea>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="exampleInputEmail1">{{ __('AdditionalInformation') }}</label>
                                                        <textarea name="en_additionalinformation" id="summernote3" class="form-control">{!! $product->en_AdditionalInformation !!}</textarea>
                                                    </div> --}}
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="input__button">
                                            <button type="submit" class="btn btn-blue">{{ __('Update') }}</button>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="col-md-6">--}}
                                {{-- <div class="form-vertical__item bg-style">--}}
                                {{-- <div class="item-top mb-30">--}}
                                {{-- <h2>{{ langString('fr', false) . ':' }}</h2>--}}
                                {{-- </div>--}}
                                {{-- <div class="input__group mb-25">--}}
                                {{-- <label for="exampleInputEmail1">{{ __('Product Name') }}</label>--}}
                                {{-- <input type="text" class="form-control" id="fr_product_name"--}}
                                {{-- value="{{ $product->fr_Product_Name }}" name="fr_product_name">--}}
                                {{-- </div>--}}
                                {{-- <div class="input__group mb-25">--}}
                                {{-- <label for="exampleInputEmail1">{{ __('About') }}</label>--}}
                                {{-- <textarea name="fr_about" id="fr_about" class="form-control">{!! $product->fr_About !!}</textarea>--}}
                                {{-- </div>--}}
                                {{-- <div class="input__group mb-25">--}}
                                {{-- <label for="exampleInputEmail1">{{ __('Description') }}</label>--}}
                                {{-- <textarea name="fr_description" id="summernote4" class="form-control">{!! $product->fr_Description !!}</textarea>--}}
                                {{-- </div>--}}
                                {{-- <div class="input__group mb-25">--}}
                                {{-- <label for="exampleInputEmail1">{{ __('ShippingReturn') }}</label>--}}
                                {{-- <textarea name="fr_shippingreturn" id="summernote5" class="form-control">{!! $product->fr_ShippingReturn !!}</textarea>--}}
                                {{-- </div>--}}
                                {{-- <div class="input__group mb-25">--}}
                                {{-- <label for="exampleInputEmail1">{{ __('AdditionalInformation') }}</label>--}}
                                {{-- <textarea name="fr_additionalinformation" id="summernote6" class="form-control">{!! $product->fr_AdditionalInformation !!}</textarea>--}}
                                {{-- </div>--}}

                                {{-- </div>--}}
                                {{-- </div>--}}
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
<script src="{{ asset('backend/js/admin/products/physical-edit.js') }}"></script>
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
        $('#sim_working').hide();
        $('#ptaOfficial').hide();
        $('#sim').hide();
        $('#warrantyMonthsField').hide();

        // Event listeners inside the modal
        $('#en_brand_name, #officialWarranty, #carrierLock, #WorkingCondition, #ptaOfficial').on('change', function() {
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
                case 'ptaOfficial':
                    if (selectedValue === '0') {
                        $('#sim').hide();
                    } else {
                        $('#sim').show();
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