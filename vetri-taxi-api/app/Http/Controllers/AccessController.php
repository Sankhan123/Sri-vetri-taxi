<?php

namespace App\Http\Controllers;

use App\Models\Hillstrip;
use App\Models\Localtrip;
use App\Models\Login;
use App\Models\Normaltaxi;
use App\Models\Oneday;
use Illuminate\Http\Request;

class AccessController extends Controller
{
    public function get_cars(){

        $result = Login::all();
        
        return response()->json([
            'status' => 200,
            'data' => $result,
        ]);
    }

    public function get_trips($id){

        $taxi = Normaltaxi::where('car_id', $id)->orderBy('id','asc')->get();
        $daytrip = Oneday::where('car_id', $id)->orderBy('id','asc')->get();
        $local = Localtrip::where('car_id', $id)->orderBy('id','desc')->get();
        $hills = Hillstrip::where('car_id', $id)->orderBy('id','desc')->get();
        
        return response()->json([
            'status' => 200,
            'taxi' => $taxi,
            'daytrip' => $daytrip,
            'local' => $local,
            'hills' => $hills,
        ]);
    }
}
