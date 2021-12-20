<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Localtrip extends Model
{
    use HasFactory;
    protected $table = 'Localtrip_details';
    protected $fillable = [
        
        'car_id',
         'triphr',
         'tripkms',
         'cus_name',
          'mobile',
           'payment',
           'xtrakm',
           'xtracharge',
             'total',
              
   ];
}
