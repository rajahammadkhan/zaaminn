<?php

namespace App\Models\Front;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Accessory extends Model
{
    use HasFactory;

    protected $table = "accessories";

    protected $fillable = [
        'user_id',
        'city',
        'number',
        'category',
        'sub_category',
        'model',        
        'image',        
        'image_two',        
        'image_three',        
        'image_four',        
        'image_five',                
        'price',
        'description',
        'date',        
        'partName',       
        'discountPrice',
        'is_admin_approval',
        'is_delete'
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
}
