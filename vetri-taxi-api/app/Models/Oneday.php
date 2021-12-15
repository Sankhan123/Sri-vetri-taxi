<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Oneday extends Model
{
    use HasFactory;
    protected $table = 'onedaytrip_details';
    protected $fillable = [
        
       'date',
        'car_id',
         'customer_name',
          'mobile',
           'initial_payment',
            'kms_travelled',
             'total',
              
   ];
}
