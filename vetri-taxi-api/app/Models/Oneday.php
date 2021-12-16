<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Oneday extends Model
{
    use HasFactory;
    protected $table = 'onedaytrip_details';
    protected $fillable = [
        'car_id',
         'cus_name',
          'mobile',
           'fixed_payment',
            'distance',
             'total',
              
   ];
}
