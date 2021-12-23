<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hillstrip extends Model
{
    use HasFactory;
    protected $table = 'hillstrip_details';
    protected $fillable = [
        
        'car_id',
         'trip_from',
         'trip_to',
         'cus_name',
         'trip_type',
          'mobile',
           'payment',
           'members',
           'trip_days',
           'driver_batta',
             'total',
              
   ];
}
