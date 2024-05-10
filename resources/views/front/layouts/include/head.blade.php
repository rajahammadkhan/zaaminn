<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>@yield('title') {{ __('| ' . $allsettings['app_title']) }}</title>
    <meta name="description" content="@yield('description')" />
    <meta name="keywords" content="@yield('keywords')" />
    <meta name="author" content="{{ $allsettings['meta_author'] }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- fonts file -->
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Allison&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Marcellus&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- css file  -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/plugins.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/style.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/extra.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/responsive.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/cookie-consent.css') }}">

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset(IMG_FAVICON_PATH . $allsettings['favicon']) }}" type="image/x-icon">
    {{-- toastr --}}
    <link rel="stylesheet" href="{{ asset('admin/css/toastr.min.css') }}">

    <style>
        .header_search {
            width: 100% !important;
        }

        .custom-slick-css .testimonial-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 110px !important;
            align-items: center !important;
        }

        .product-review {
            display: none;
        }

        ul.additional-details-list strong {
            padding-left: 10px;
        }

        .slide-card-shadow:hover {
            background: #DFC42A;
            transform: translateY(-10px);
            transition: transform 0.3s ease;
        }

        .slide-card-shadow p,
        .slide-card-shadow h6 {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-weight: 500;
            font-size: 17px;
        }

        .product-btn .fa-heart {
            display: none;
        }

        .share-area .fab {
            line-height: 3.5rem;
        }

        .product-color-area .fas,
        .product-color-area .my-detail-font {
            font-size: 20px;
        }

        .custom-detail .product-color-area {
            margin-top: 20px;
        }

        .custom-detail .variable-single-item {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .custom-detail.color-switch {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .custom-detail .product-variable-color {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .custom-detail .label-icon {
            font-size: 20px;
            margin-right: 10px;
            color: #19256E;

        }

        .custom-detail .label-text {
            font-weight: bold;
            margin-right: 5px;
            color: #333;

        }

        .custom-detail .value-text {
            color: #666;

        }

        .custom-detail .additional-details-list {
            margin-top: 20px;
        }

        .product-details-container {
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
        }

        .additional-details-list {
        list-style: none;
        padding: 0;
        margin: 0;
        }

        .additional-details-list li {
        margin-bottom: 10px;
        display: flex;
        align-items: center;
        }

        .additional-details-list li i {
        margin-right: 10px;
        color: #19256E;
        }

        .additional-details-list li strong {
        margin-right: 5px;
        }

        .text-dark {
        color: #333333;
        }

        .text-color {
        color: #19256E;
        }

        .product-details-container li {
            border-bottom: 1px solid #e5e5e5;
        }

    </style>

</head>
