<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\SellerProduct;
use App\Models\SellerProduct2;
use App\Models\Front\Accessory;
use App\Models\User;
use App\Models\Admin\Brand;
use App\Models\Admin\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SellerController extends Controller
{

    public function index()
    {
        // $user = Auth::user();
        // $products=SellerProduct::get();

        $products = SellerProduct2::with('category', 'brand', 'user')->get();
        $accessories = Accessory::with('category', 'brand', 'user')->get();

        $categories = Category::get();
        $brands = Brand::get();

        return view('admin.pages.seller.index', compact('products', 'brands', 'categories', 'accessories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }    

    public function toggleIsAdminApproval($id){
        $product = SellerProduct2::find($id);
        if (!$product) {
            return response()->json(['error' => 'Product not found'], 404);
        }

        $product->is_admin_approval = !$product->is_admin_approval;
        $product->save();

        return response()->json(['success' => 'is_admin_approval toggled successfully', 'new_status' => $product->is_admin_approval]);
    }

    public function accessoryAdminApproval($id){
        $product = Accessory::find($id);
        if (!$product) {
            return response()->json(['error' => 'Accessory not found'], 404);
        }

        $product->is_admin_approval = !$product->is_admin_approval;
        $product->save();

        return response()->json(['success' => 'Accessory status updated successfully', 'new_status' => $product->is_admin_approval]);
    }
}
