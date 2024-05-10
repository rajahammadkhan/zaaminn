<?php

namespace App\Models;

use App\Models\Admin\Category;
use App\Models\Admin\Color;
use App\Models\Admin\Brand;
use App\Models\Admin\ProductTag;
use App\Models\ProductReview;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SellerProduct2 extends Model
{
    use HasFactory;

    protected $table = "seller_products2";

    protected $fillable = [
        'user_id',
        'city',
        'number',
        'category_id',
        'brand_id',
        'model',
        'color',
        'storage',
        'ram',
        'bodyCondition',
        'image',
        'is_true_tone',
        'iphone_message',
        'battery_status',
        'screen_glass',
        'lcd_condition',
        'WorkingCondition',
        'issues',
        'is_carrier_lock',
        'is_sim_working',
        'is_pta_official',
        'sim',
        'is_official_warranty',
        'warrantyMonths',
        'price',
        'description',
        'date',
        'number2',
        'category_id_2',
        'companyModel',
        'partName',
        'price2',
        'discountPrice',
        'description2',
        'is_admin_approval',
        'img_two',
        'img_three',
        'img_four',
        'img_five'
    ];

    protected $casts = [
        'iphone_message' => 'array',
        'lcd_condition' => 'array',
        'issues' => 'array'
    ];


    public function user(){
        return $this->belongsTo(User::class);
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id');
    }

    public function brand(){
        return $this->belongsTo(Brand::class,'brand_id');
    }

    // public function colors()
    // {
    //     return $this->belongsToMany(Color::class, 'color');
    // }    

    public function product_tags()
    {
        return $this->hasMany(ProductTag::class, 'product_id');
    }

    public function product_reviews()
    {
        return $this->hasMany(ProductReview::class, 'product_id');
    }

}
