<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Normaltaxi extends Model
{
    use HasFactory;
    protected $table = 'normaltaxi_details';
    protected $fillable = [
        
        'car_id',
         'from',
         'to',
         'cus_name',
          'mobile',
           'distance',
           'w_hour',
           'w_charge',
            'waiting_hrs',
            'driver_batta',
             'total',
              
   ];
}
