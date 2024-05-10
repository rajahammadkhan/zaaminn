<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SellerProduct extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 'title','model','mobile_number','email','address','price','image','discount_price','en_Product_Slug'
    ];


    public function user(){
        return $this->belongsTo(User::class);
    }
}
