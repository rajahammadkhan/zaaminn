<?php

namespace App\Models\Admin;
use App\Models\SellerProduct2;
use App\Models\Front\Accessory;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;
    protected $fillable=[
      'BrandImage',
      'category_id',
      'en_BrandName',
      'fr_BrandName',
      'en_BrandSlug',
      'fr_BrandSlug',
      'Status'
    ];
    
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function products()
    {
        return $this->hasMany(Product::class,'Brand_Id');
    }
    public function sellarProducts()
    {
        return $this->hasMany(SellerProduct2::class,'brand_id');
    }

    public function accessories()
    {
        return $this->hasMany(Accessory::class,'brand_id');
    }   
}

