<!-- Header section start -->
<header class="header__area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="header__navbar">
                    <div class="header__navbar__left">
                        <button class="sidebar-toggler">
                            <img src="{{asset('admin/images/icons/header/bars.svg')}}" alt="">
                        </button>
                        <a href="{{route('front')}}" target="_blank" class="btn btn-primary text-white">{{__('Visit Site')}}</a>                        
                    </div>
                    <div class="header__navbar__right">
                        <ul class="header__menu">
                            <li><a href="{{route('user.buyer')}}" class="btn btn-primary text-white justify-content-right">{{__('Become a Buyer')}}</a></li>
                            <li>
                                <a href="#" class="btn btn-dropdown user-profile" data-bs-toggle="dropdown">
                                    <img src="{{!is_null(Auth::user()->image) ? asset(AdminProfilePicture().Auth::user()->image) : Avatar::create(Auth::user()->name)->toBase64()}}" alt="{{__('icon')}}">
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="{{route('editSellerProfile')}}">
                                            <img src="{{asset('admin/images/icons/user.svg')}}" alt="icon">
                                            <span>{{__('Profile')}}</span>
                                        </a>
                                    </li>
                                    <li>
                                            <a class="dropdown-item" href="{{url('/seller/logout')}}" >
                                                <img src="{{asset('admin/images/icons/logout.svg')}}" alt="icon">
                                                <span>{{__('Logout')}}</span>
                                            </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header section end -->
