<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Brand;
use App\Models\Admin\Category;
use App\Models\SellerProduct2;
use App\Models\Admin\Color;
use App\Models\Admin\Product;
use App\Models\Admin\ProductTag;
use App\Models\Admin\Size;
use App\Models\SeoSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
     public function singleProduct($slug)
    {

        $product = Product::with('category')->where('en_Product_Slug', $slug)->with('category')->where('status', 1)->first();
        $zamin = false;

        if (!empty($product)) {
            $cat_id = $product->category->id;

            $data['similar_product'] =  Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)
                ->where('Category_Id', $cat_id)
                ->where('id', '!=', $product->id)
                ->latest()->take(4)->get();

            $products = Product::where('id', $product->id)->with('brand', 'category', 'colors', 'sizes', 'product_tags', 'product_reviews', 'product_reviews.user')->latest()->first();
            $data['products'] = $products;
            $data['title'] = $products->en_Product_Name;
            $data['description'] = $products->en_Product_Nam;
            $data['keywords'] = $products->en_Product_Nam;

            //if product category in array 12, 15 then return view
            if (in_array($cat_id, [12, 15])) {
                $zamin = true;
            }

            $data['zamin'] = $zamin;



            return view('front.pages.product.single_product', $data);
        }
        return redirect()->back()->with('error', __('Product Not Found!'));
    }
    
    
    public function allProduct()
    {
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->latest()->paginate(9);
        $seller_products = SellerProduct2::with('category', 'brand')->get();
        $data['seller_products'] = $seller_products;
        $data['products'] = $products;

        // dd($data);
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.all_product', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }
    public function sellerAllProducts()
    {
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->latest()->paginate(9);
        // $seller_products = SellerProduct2::with('category', 'brand')->get();
        $data['products'] = $products;
        // $data['seller_products'] = $seller_products;
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.all_product', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }
    public function productListLeftSidebar()
    {
        $data['tags'] = ProductTag::with('product')->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->latest()->paginate(9);
        $data['products'] = $products;
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.left_sidebar', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }

    public function productSorting(Request $request)
    {
        if ($request->ajax()) {
            $value = $request->filter;
            if ($value == 'Categories') {
                $filters = Product::where('Category_Id', '!=', null)->get();
                if ($filters) {
                    return view('front.pages.product.filter_product', compact('filters'));
                }
            } elseif ($value == 'Brands') {
                $filters = Product::where('Brand_Id', '!=', null)->get();
                if ($filters) {
                    return view('front.pages.product.filter_product', compact('filters'));
                }
            } elseif ($value == 'Products') {
                $filters = Product::get();
                if ($filters) {
                    return view('front.pages.product.filter_product', compact('filters'));
                }
            }
        }
        return 'something wrong';
    }

    public function productFiltering(Request $request)
    {
    //    dd($request->is_admin);

        if ($request->ajax()) {
            if ($request->checkCat) {
                if($request->is_admin){
                    $filters = SellerProduct2::with('category')->where('is_admin_approval', 1)->whereHas('category', function ($query) use ($request) {
                        $query->whereIn('en_Category_Name', $request->checkCat);
                    })->get();
                }
                else{
                    $filters = Product::with('category')->whereHas('category', function ($query) use ($request) {
                        $query->whereIn('en_Category_Name', $request->checkCat);
                    })->get();
                }               
            } elseif ($request->checkBrand) {
                 if($request->is_admin){                   
                     $filters = SellerProduct2::with('brand')
                    ->where('is_admin_approval', 1)
                    ->whereHas('brand', function ($query) use ($request) {
                        $query->whereIn('en_BrandName', $request->checkBrand);
                    })
                    ->get();
                 }
                 else{
                    $filters = Product::with('brand')->whereHas('brand', function ($query) use ($request) {
                        $query->whereIn('en_BrandName', $request->checkBrand);
                    })->get();
                }
            } elseif ($request->checkColor) {
                $filters = Product::with('colors')->whereHas('colors', function ($query) use ($request) {
                    $query->whereIn('Name', $request->checkColor);
                })->get();
            } elseif ($request->checkSize) {
                $filters = Product::with('sizes')->whereHas('sizes', function ($query) use ($request) {
                    $query->whereIn('Size', $request->checkSize);
                })->get();
            } elseif ($request->search) {
                if(!$request->is_admin){
                    $filters = Product::where('en_Product_Name', 'LIKE', "%{$request->search}%")->get();
                }
            } elseif ($request->min && $request->max) {
                if($request->is_admin){
                    $filters = SellerProduct2::whereBetween('price', [$request->min, $request->max])->get();
                }
                else{
                    $filters = Product::whereBetween('Discount_Price', [$request->min, $request->max])->get();
                }
            } else {
                if($request->is_admin){
                    $filters = SellerProduct2::where('is_admin_approval', 1)->get();
                }
                else{
                    $filters = Product::get();
                }
            }
        }
        if($request->is_admin){
            return view('front.pages.product.filter_product2', compact('filters'));    
        }
        else{
            return view('front.pages.product.filter_product', compact('filters'));    
        }
    }

    public function productSortingLeftSide(Request $request)
    {
        if ($request->ajax()) {
            $value = $request->filter;
            if ($value == 'Categories') {
                $filters = Product::where('Category_Id', '!=', null)->get();
                if ($filters) {
                    return view('front.pages.product.filter_product', compact('filters'));
                }
            } elseif ($value == 'Brands') {
                $filters = Product::where('Brand_Id', '!=', null)->get();
                if ($filters) {
                    return view('front.pages.product.filter_product', compact('filters'));
                }
            } elseif ($value == 'Products') {
                $filters = Product::get();
                if ($filters) {
                    return view('front.pages.product.filter_leftsidebar', compact('filters'));
                }
            }
        }
        return 'something wrong';
    }

    public function  productFilteringLeftSide(Request $request)
    {
        if ($request->ajax()) {
            if ($request->checkCat) {
                $filters = Product::with('category')->whereHas('category', function ($query) use ($request) {
                    $query->whereIn('en_Category_Name', $request->checkCat);
                })->get();
            } elseif ($request->checkBrand) {
                $filters = Product::with('brand')->whereHas('brand', function ($query) use ($request) {
                    $query->whereIn('en_BrandName', $request->checkBrand);
                })->get();
            } elseif ($request->checkColor) {
                $filters = Product::with('colors')->whereHas('colors', function ($query) use ($request) {
                    $query->whereIn('Name', $request->checkColor);
                })->get();
            } elseif ($request->checkSize) {
                $filters = Product::with('sizes')->whereHas('sizes', function ($query) use ($request) {
                    $query->whereIn('Size', $request->checkSize);
                })->get();
            } elseif ($request->search) {
                $filters = Product::where('en_Product_Name', 'LIKE', "%{$request->search}%")->get();
            } elseif ($request->min && $request->max) {
                $filters = Product::whereBetween('Discount_Price', [$request->min, $request->max])->get();
            } else {
                $filters = Product::get();
            }
        }
        return view('front.pages.product.filter_leftsidebar', compact('filters'));
    }

    public function CategoryWiseProduct($id)
    {
        $data['category_m'] = Category::whereId($id)->first();
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::whereId($id)->with('products')->whereNotNull('en_Description')->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->where('Category_Id', $id)->latest()->paginate(9);
        $data['products'] = $products;
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.category_wise_product', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }

    public function CategoryWiseProductLeft($id)
    {
        $data['category_m'] = Category::whereId($id)->first();
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->where('Category_Id', $id)->latest()->paginate(9);
        $data['products'] = $products;
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.category_wise_product_left', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }
    public function BrandWiseProduct($id = null)
    {
        $id ? $data['category_m'] = Brand::whereId($id)->first() : '';
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        // $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->where('Brand_Id', $id)->latest()->paginate(9);
        
        if($id){
            $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->where('Brand_Id', $id)->latest()->paginate(9);
        }
        else{
            $products = SellerProduct2::with('brand', 'category', 'product_tags')->where('is_admin_approval', 1)->latest()->paginate(9);
        }
        $data['products'] = $products;     

        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products && $id) {
            return view('front.pages.product.brand_wise_product', $data);
        }
        else if($products){
            return view('front.pages.product.brand_wise_product2', $data);            
        }
        
    return view('front.pages.product.empty-product', $data);
    }
    public function BrandWiseProductLeft($id)
    {
        $data['category_m'] = Brand::whereId($id)->first();
        $data['tags'] = ProductTag::with('product')->latest()->get();
        $data['colors'] = Color::with('products')->latest()->get();
        $data['sizes'] = Size::with('products')->latest()->get();
        $data['category'] = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $data['brands'] = Brand::with('products')->get();
        $products = Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)->where('Brand_Id', $id)->latest()->paginate(9);
        $data['products'] = $products;
        $seo = SeoSetting::where('slug', 'all-products')->first();
        $data['title'] = $seo->title;
        $data['description'] = $seo->description;
        $data['keywords'] = $seo->keywords;
        if ($products) {
            return view('front.pages.product.brand_wise_product_left', $data);
        }
        return view('front.pages.product.empty-product', $data);
    }

    public function CategorySearchProduct(Request $request)
    {
        $cat = $request->category;
        $search = $request->search;
        $tags = ProductTag::with('product')->latest()->get();
        $colors = Color::with('products')->latest()->get();
        $sizes = Size::with('products')->latest()->get();
        $category = Category::with('products')->where('en_Description', null)->orWhere('Category_Icon', null)->get();
        $brands = Brand::with('products')->get();
        $products = Product::query();
        $products = $products->with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1);

        if ($search) {
            $products = $products->where('en_Product_Name', 'LIKE', "%{$search}%")
                ->orWhere('fr_Product_Name', 'LIKE', "%{$search}%");
        }
        if ($cat) {
            $products = $products->where('Category_Id', $cat);
        }
        $products = $products->latest()->paginate(9);
        if (count($products) > 0) {
            return view('front.pages.product.search-result', compact('products', 'category', 'colors', 'sizes', 'brands'));
        }
        return view('front.pages.product.empty-product');
    }

    public function productForm(){
        return view('front.pages.product.product-form');
    }
}
