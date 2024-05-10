<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Advertise;
use App\Models\Admin\Blog;
use App\Models\Admin\Brand;
use App\Models\Admin\CompanyStory;
use App\Models\Admin\ImageGallery;
use App\Models\Admin\Product;
use App\Models\Admin\Slider;
use App\Models\Admin\Testimonial;
use App\Models\Banner;
use App\Models\Currency;
use App\Models\Language;
use App\Models\SellerProduct;
use App\Models\SellerProduct2;
use App\Models\Front\Accessory;
use App\Models\SeoSetting;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Models\Admin\Category;

class HomeController extends Controller
{

    public  function index()
    {        
        if (file_exists(storage_path('installed'))) {
            if (!Session::has('currency')) {
                Session::put('currency', Setting::where('slug', 'default_currency')->first()->value ?? 'USD');
            }
            $data['sliders'] = Slider::latest()->get();
            $data['banner'] = Banner::first();
            $data['promotion'] = Advertise::latest()->get();
            $data['blogs'] = Blog::with('tags')->latest()->get();
            $data['brands'] = Brand::latest()->get();
            $data['brands_products'] = Product::whereBrandId('8')->get();

            
            $data['brands_products_samsung'] = Product::whereBrandId('9')->get();

            // dd($data['brands_products_samsung']);
            $data['brands_products_vivo'] = Product::whereBrandId('11')->get();
            $data['brands_products_oppo'] = Product::whereBrandId('12')->get();
            $data['brands_products_nokia'] = Product::whereBrandId('14')->get();
            $data['story'] = CompanyStory::latest()->get();
            $all_products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->latest();
            // dd($all_products);
            $data['products'] = $all_products->paginate(allsetting('home_products_page'));
            $data['new_arrivals'] = $all_products->where('New_Arrival', ACTIVE)->paginate(allsetting('home_trending_page'));
            $data['best_sellings'] = $all_products->where('Best_Selling', ACTIVE)->paginate(allsetting('home_trending_page'));
            $data['on_sales'] = $all_products->where('On_Sale', ACTIVE)->paginate(allsetting('home_trending_page'));
            $data['featured_products'] = $all_products->where('Featured_Product', ACTIVE)->paginate(allsetting('home_trending_page'));
            $data['testimonial'] = Testimonial::get();
            $seo = SeoSetting::where('slug', 'home')->first();
            $data['title'] = $seo->title;
            $data['description'] = $seo->description;
            $data['keywords'] = $seo->keywords;
            $data['seller_products'] =SellerProduct2::with('brand', 'category')->where('is_admin_approval', 1)->where('is_sold', 0)->get();
            // $data['seller_products'] =SellerProduct::get();
            $data['accessories'] = Accessory::where('is_admin_approval', 1)->where('is_sold', 0)->get();
             $data['categories'] = Category::where('status', 1)->get();
             
            //  dd($data);
             
            return view('front.index',$data);
        } else {
            return redirect()->to('/install');
        }
    }
    public function theme_set(Request $request)
    {
        if (env('APP_DEMO') == true) {
            session(['theme' => $request->theme]);
        }
        return redirect()->route('front');
    }
    public function localeSwitch($locale)
    {
        $lang = Language::where('locale', $locale)->first();
        // dd("sdfsf");
        session(['APP_LOCALE' => $locale, 'lang_dir' => $lang->direction]);
        // dd(session('APP_LOCALE'));
        return redirect()->back();
    }
    public function currencySwitch($currency)
    {
        Session::put('currency', $currency);
        return redirect()->back();
    }

    public function sellerProductsPage(){
        $data = SellerProduct2::with('category', 'brand')->where('is_admin_approval', 1)->get();

        // return $data;

        return view('Sellers.seller_products_page', ['data' => $data]);
    }
}