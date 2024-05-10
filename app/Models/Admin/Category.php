<?php

namespace App\Models\Admin;
use App\Models\SellerProduct2;
use App\Models\Front\Accessory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable=[
      'id', 'en_Category_Name','en_Category_Slug','Status','en_Description','Category_Icon','fr_Category_Name','fr_Category_Slug','fr_Description','category_image'
    ];

    public function brands()
    {
        return $this->hasMany(Brand::class, 'category_id');
    }

    public function products()
    {
        return $this->hasMany(Product::class,'Category_Id');
    }

    public function sellarProducts()
    {
        return $this->hasMany(SellerProduct2::class,'category_id');
    }
    public function accessories()
    {
        return $this->hasMany(Accessory::class,'category_id');
    }

}
