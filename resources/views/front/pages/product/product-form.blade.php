
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Product Information</title>
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
            border-color: #fff !important;
            border-top: 4px solid #007bff!important

        }
        .nav-tabs .nav-link.active:focus-visible{
            outline:none !important;
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
<body>
    <form enctype="multipart/form-data" method="POST" action="{{route('seller.productStore')}}">
        <div class="modal-body">
                <ul class="nav nav-tabs" id="myTabs">
                    <li class="nav-item">
                        <a class="nav-link active" id="tab1" data-toggle="tab" href="#form1">Seller Product Form</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tab2" data-toggle="tab" href="#form2">Product Category Form</a>
                    </li>
                </ul>
                <div class="tab-content mt-2">
                    <div class="tab-pane fade show active" id="form1">
                        <div class="form-section">
                            <h2 class="text-center mb-4">Seller Product Form</h2>
                            <form>
                               <div class="row no-gutters">
                                    <div class="col-md-12 pr-3">
                                        <fieldset class="shadow-sm p-3 bg-white mb-3">
                                            <legend>
                                                Contact Information
                                            </legend>
                                            <div class="row no-gutters">
                                                <div class="col-6 pr-2">
                                                    <label for="date" class="">City</label>
                                                    <input type="text" class="form-control" id="city" name="city" placeholder="City">
                                                </div>
                                                <div class="col-6">
                                                    <label for="no" class="">Contact No</label>
                                                    <input type="text" class="form-control" id="no" name="no" placeholder="Contact No">
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
                                                    <select class="form-control" id="category" name="category">
                                                        <option value="" selected disabled>Please Select Category</option>
                                                        <option value="mobile">Mobile</option>
                                                        <option value="tablet">Tablet</option>
                                                        <option value="ipad">iPad</option>
                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <label for="brand">Brand</label>
                                                    <select class="form-control" id="brand" name="brand">
                                                        <option value="" selected disabled>Please Select Brand</option>
                                                        <option value="iphone">IPhone</option>
                                                        <option value="samsung">Samsung</option>
                                                        <option value="vivo">Vivo</option>
                                                        <option value="infinix">Infinix</option>
                                                        <option value="oppo">Oppo</option>
                                                        <option value="xiaomi">Xiaomi</option>
                                                        <option value="tecno">Tecno</option>
                                                        <option value="oneplus">OnePlus</option>
                                                        <option value="huawei">Huawei</option>
                                                        <option value="google">Google</option>
                                                        <option value="realme">Realme</option>
                                                        <option value="motorola">Motorola</option>
                                                        <option value="nokia">Nokia</option>
                                                        <option value="lg">LG</option>
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
                                                    <input type="file" class="form-control border-0 pl-0" id="photos" name="photos" multiple>
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
                                                                <input class="form-check-input" type="radio" id="yes" name="screen" value="yes">
                                                                <label class="form-check-label" for="yes">Yes</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="no" name="screen" value="front-glass-broken">
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
                                                                <input class="form-check-input" type="checkbox" id="Display-message" name="screen[]" value="Display-message-lcd">
                                                                <label class="form-check-label" for="Display-message">Display Message</label>
                                                            </div>
                                                            <div class="form-check col-6 pl-5">
                                                                <input class="form-check-input" type="checkbox" id="Camera-message" name="screen[]" value="Dots-spots">
                                                                <label class="form-check-label" for="Camera-message">Camera Message </label>
                                                            </div>
                                                            <div class="form-check col-6 pl-5">
                                                                <input class="form-check-input" type="checkbox" id="Battery-Message" name="screen[]" value="Battery-Message">
                                                                <label class="form-check-label" for="Battery-Message">Battery Message</label>
                                                            </div>
                                                            <div class="form-check col-6 pl-5">
                                                                <input class="form-check-input" type="checkbox" id="Battery-service" name="screen[]" value="Shade-Heavy">
                                                                <label class="form-check-label" for="Battery-service">Battery Service</label>
                                                            </div>
                                                            <div class="form-check col-6 pl-5">
                                                                <input class="form-check-input" type="checkbox" id="none-of-these" name="screen[]" value="none-of-these">
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
                                                                    <input class="form-check-input" type="radio" id="above-85" name="batteryStatus" value="above-85">
                                                                    <label class="form-check-label" for="above-85">Above 85%</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" id="below-85" name="batteryStatus" value="below-85">
                                                                    <label class="form-check-label" for="below-85">Below 85%</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" id="battery-service" name="batteryStatus" value="battery-service">
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
                                                <div class="col-6 border-right pr-3">
                                                    <div class="">
                                                        <label class="custom-header">Glass</label>
                                                        <div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="okGlass" name="screen" value="ok-glass">
                                                                <label class="form-check-label" for="okGlass">Full clean</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="frontGlassBroken" name="screen" value="front-glass-broken">
                                                                <label class="form-check-label" for="frontGlassBroken">Front Glass Broken</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="FewGlassBroken" name="screen" value="front-glass-broken">
                                                                <label class="form-check-label" for="FewGlassBroken">Few Screches on Glass</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="HeavyGlassBroken" name="screen" value="front-glass-broken">
                                                                <label class="form-check-label" for="HeavyGlassBroken">Heavy Screches on Glass</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="backGlassBroken" name="screen" value="back-glass-broken">
                                                                <label class="form-check-label" for="backGlassBroken">Back Glass Broken</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" id="bothSidesBroken" name="screen" value="both-sides-broken">
                                                                <label class="form-check-label" for="bothSidesBroken">Both Sides Broken</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6 pl-3">
                                                    <label class="custom-header">LCD</label>
                                                    <div class="">
                                                        <div class="form-group">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="Broken" name="screen[]" value="Broken-lcd">
                                                                <label class="form-check-label" for="Broken">Broken</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="Dotsspots" name="screen[]" value="Dots-spots">
                                                                <label class="form-check-label" for="Dotsspots">Dots / spots </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="Lines" name="screen[]" value="Lines">
                                                                <label class="form-check-label" for="Lines">Lines</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="ShadeHeavy" name="screen[]" value="Shade-Heavy">
                                                                <label class="form-check-label" for="ShadeHeavy">Shade Heavy</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="Shadelight" name="screen[]" value="Shade-light">
                                                                <label class="form-check-label" for="Shadelight">Shade light</label>
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
                                                    <option value="fullyFunctional">Fully Functional</option>
                                                    <option value="Issue" selected="selected">Issue</option>
                                                </select>
                                            </div>
                                            <di class=" col-12 " id="Workingissue">
                                                <label for="WorkingCondition" class="custom-header mb-4">Working Issue</label>
                                                <div class="row no-gutters">
                                                    <div class="col-6 pr-3 border-right">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" name="workingCondition" id="batteryIssue" value="Battery Issue">
                                                            <label class="form-check-label" for="batteryIssue">Battery Issue</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="chargingIssue" name="issues[]" value="Charging Issue">
                                                            <label class="form-check-label" for="chargingIssue">Charging Issue</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="frontCamera" name="issues[]" value="Front Camera">
                                                            <label class="form-check-label" for="frontCamera">Front Camera</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="backCamera" name="issues[]" value="Back Camera">
                                                            <label class="form-check-label" for="backCamera">Back Camera</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="faceID" name="issues[]" value="Face ID">
                                                            <label class="form-check-label" for="faceID">Face ID</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="wibi" name="issues[]" value="Wibi">
                                                            <label class="form-check-label" for="wibi">Wifi</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="signalDrop" name="issues[]" value="Signal Drop">
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
                                                            <input class="form-check-input" type="checkbox" id="touchProblem" name="issues[]" value="Touch Problem">
                                                            <label class="form-check-label" for="touchProblem">Touch Problem</label>
                                                        </div>

                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="mouthpiece" name="issues[]" value="Mouthpiece/Mic">
                                                            <label class="form-check-label" for="mouthpiece">Mouthpiece/Mic</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="speakerSound" name="issues[]" value="Speaker Sound">
                                                            <label class="form-check-label" for="speakerSound">Speaker Sound</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="fingerprintSensor" name="issues[]" value="Fingerprint Sensor">
                                                            <label class="form-check-label" for="fingerprintSensor">Fingerprint Sensor</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="bluetooth" name="issues[]" value="Bluetooth">
                                                            <label class="form-check-label" for="bluetooth">Bluetooth</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="cameraDots" name="issues[]" value="Camera Dots">
                                                            <label class="form-check-label" for="cameraDots">Camera Dots</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="flashLights" name="issues[]" value="Flash Lights">
                                                            <label class="form-check-label" for="flashLights">Flash Lights</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" id="other" name="issues[]" value="Flash Lights">
                                                            <label class="form-check-label" for="other">other</label>
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
                                                    <select class="form-control" id="carrierLock" name="carrierLock">
                                                        <option value="yes">Yes</option>
                                                        <option value="no" selected>No</option>
                                                    </select>
                                                </div>
                                                <div class="col-4 pr-2 mb-2" id="ptaOfficial">
                                                    <label for="ptaOfficial">PTA Official:</label>
                                                    <select class="form-control" name="ptaOfficial">
                                                        <option value="yes">Yes</option>
                                                        <option value="no">No</option>
                                                    </select>
                                                </div>
                                                <div class="col-4 mb-2" id="sim">
                                                    <label for="sim">SIM:</label>
                                                    <select class="form-control" name="sim">
                                                        <option value="single">Single SIM</option>
                                                        <option value="dual">Dual SIM</option>
                                                        <option value="one-esim">One Physical + One e-SIM</option>
                                                        <!-- Add more SIM options as needed -->
                                                    </select>
                                                </div>
                                                <div class="col-4 pr-2 mb-2">
                                                    <label for="warranty">Official Warranty:</label>
                                                    <select class="form-control" id="officialWarranty" name="officialWarranty">
                                                        <option value="yes">Yes</option>
                                                        <option value="no">No</option>
                                                    </select>
                                                </div>
                                                <div class="col-4 mb-2" id="warrantyMonthsField">
                                                    <label>Warranty Duration</label>
                                                    <select class="form-control"  name="warrantyMonthsField" >
                                                        <option value="1">1 Month</option>
                                                        <option value="2">2 Months</option>
                                                        <option value="3">3 Months</option>
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

                            </form>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="form2">
                        <div class="form-section">
                            <div class="container-fluid">
                                <h2 class="text-center mb-4">Product Information Form</h2>
                                <div class="form-section">
                                    <form>
                                        <fieldset class="shadow-sm p-3 bg-white">
                                            <legend>Product Category Form</legend>
                                            <div class="row no-gutters">
                                                <div class="col-6 form-group pr-3">
                                                    <label class="mb-0" for="date">Date:</label>
                                                    <input type="date" class="form-control" id="date" name="date">
                                                </div>
                                                <div class="col-6 form-group">
                                                    <label class="mb-0" for="no">No.:</label>
                                                    <input type="number" class="form-control" id="no" name="no" placeholder="Number">
                                                </div>
                                                <div class="col-6 form-group pr-3">
                                                    <label class="mb-0" for="category">Category:</label>
                                                    <select class="form-control" id="category" name="category">
                                                        <option value="" selected disabled>Please Select Category</option>
                                                        <option value="smartWatch">Smart Watch</option>
                                                        <option value="accessories">Accessories</option>
                                                        <option value="parts">Parts</option>
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
                                                    <input type="number" class="form-control" id="price" name="price" placeholder="Price">
                                                </div>
                                                <div class="col-12 form-group">
                                                    <label class="mb-0" for="discountPrice">Discount Price:</label>
                                                    <input type="text" class="form-control" id="discountPrice" name="discountPrice" placeholder="90 USD" readonly>
                                                </div>
                                                <div class="col-12 form-group">
                                                    <label class="mb-0" for="description">Description:</label>
                                                    <textarea class="form-control" id="description" name="description" placeholder="Description" rows="5"></textarea>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">

        </div>
    </form>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#iphone_details').hide();
        $('#ram').show();
        $('#warrantyMonthsField').hide();
        $('#ptaOfficial').hide();
        $('#sim').hide();
        $('#brand').on('change', function () {
            var selectedBrand = $(this).val().toLowerCase();
            if (selectedBrand === 'iphone') {
                $('#ram').hide();
                $('#iphone_details').show();
            } else {
                $('#ram').show();
                $('#iphone_details').hide();
            }
        });

        $('#officialWarranty').on('change', function () {
            var selectedOption = $(this).val().toLowerCase();
            if (selectedOption === 'yes') {
                $('#warrantyMonthsField').show();
            } else {
                $('#warrantyMonthsField').hide();
            }
        });

        $('#carrierLock').on('change', function () {
            var selectedOption = $(this).val().toLowerCase();
            if (selectedOption === 'no') {
                $('#ptaOfficial').show();
                $('#sim').show();
            } else {
                $('#ptaOfficial').hide();
                $('#sim').hide();
            }
        });

        $('#WorkingCondition').on('change', function () {
            var selectedOption = $(this).val().toLowerCase();
            if (selectedOption === 'fullyfunctional') {
                $('#Workingissue').hide();
            } else {
                $('#Workingissue').show();
            }
        });

        $('#ptaOfficial').on('change', function () {
            var selectedOption = $(this).val().toLowerCase();
            if (selectedOption === 'no') {
                $('#sim').hide();
            } else {
                $('#sim').show();
            }
        });
    });
</script>

</html>
