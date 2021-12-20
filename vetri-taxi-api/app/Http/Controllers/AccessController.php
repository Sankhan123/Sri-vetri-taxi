<?php

namespace App\Http\Controllers;

use App\Models\Login;
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
}
