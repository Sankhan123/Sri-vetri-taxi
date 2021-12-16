<?php

namespace App\Http\Controllers;

use App\Models\Oneday;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function add_day_trip(Request $request){
        
        $daytrip = new Oneday();
        $daytrip->cus_name = $request->input('cus_name');
        $daytrip->mobile = $request->input('mobile');
        $daytrip->distance = $request->input('distance');
        $daytrip->total = $request->input('total');
        
        $daytrip->save();

        return response()->json([
            'status' => 200,
            'message' => 'One day trip details sended',
        ]);
    }
}
