<?php

namespace App\Http\Controllers;

use App\Mail\QuoteMail;
use App\Models\Hillstrip;
use App\Models\Localtrip;
use App\Models\Normaltaxi;
use App\Models\Oneday;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class PaymentController extends Controller
{
    public function add_day_trip(Request $request){
        $details = [
            'name' => $request->input('cus_name'),
            'mobile' => $request->input('mobile'),
            'type' => 'Day Trip',
            'amount' => $request->input('total')
        ];

        Mail::to("pavisakthi1699@gmail.com")->send(new QuoteMail($details));
        
        $daytrip = new Oneday();
        $daytrip->cus_name = $request->input('cus_name');
        $daytrip->mobile = $request->input('mobile');
        $daytrip->trip_type = "Day trip";
        $daytrip->distance = $request->input('distance');
        $daytrip->total = $request->input('total');
        
        $daytrip->save();

        return response()->json([
            'status' => 200,
            'message' => 'One day trip details sended',
        ]);
    }

    public function add_local_trip(Request $request){
        $details = [
            'name' => $request->input('cus_name'),
            'mobile' => $request->input('mobile'),
            'type' => 'Local Trip',
            'amount' => $request->input('total')
        ];

        Mail::to("pavisakthi1699@gmail.com")->send(new QuoteMail($details));
        
        $daytrip = new Localtrip();
        $daytrip->cus_name = $request->input('cus_name');
        $daytrip->mobile = $request->input('mobile');
        $daytrip->trip_type = "Local trip";
        $daytrip->triphr = $request->input('triphr');
        $daytrip->distance = $request->input('tripkms');
        $daytrip->payment = $request->input('payment');
        $daytrip->xtrakm = $request->input('xtrakm');
        $daytrip->xtracharge = $request->input('xtracharge');
        $daytrip->total = $request->input('total');
        
        $daytrip->save();

        return response()->json([
            'status' => 200,
            'message' => 'Local trip details sended',
        ]);
    }

    public function add_hills_trip(Request $request){

        $details = [
            'name' => $request->input('cus_name'),
            'mobile' => $request->input('mobile'),
            'type' => 'Hills Trip',
            'amount' => $request->input('total')
        ];

        Mail::to("pavisakthi1699@gmail.com")->send(new QuoteMail($details));
        
        $daytrip = new Hillstrip();
        $daytrip->cus_name = $request->input('cus_name');
        $daytrip->mobile = $request->input('mobile');
        $daytrip->trip_type = "Hills trip";
        $daytrip->trip_from = $request->input('trip_from');
        $daytrip->trip_to = $request->input('trip_to');
        $daytrip->members = $request->input('members');
        $daytrip->payment = $request->input('payment');
        $daytrip->trip_days = $request->input('trip_days');
        $daytrip->driver_batta = $request->input('driver_batta');
        $daytrip->total = $request->input('total');
        
        $daytrip->save();

        return response()->json([
            'status' => 200,
            'message' => 'Hills trip details sended',
        ]);

    }

    public function add_taxi_trip(Request $request){
        $details = [
            'name' => $request->input('cus_name'),
            'mobile' => $request->input('mobile'),
            'type' => 'Taxi Trip',
            'amount' => $request->input('total')
        ];

        Mail::to("pavisakthi1699@gmail.com")->send(new QuoteMail($details));
        
        $taxitrip = new Normaltaxi();
        $taxitrip->from = $request->input('from');
        $taxitrip->to = $request->input('to');
        $taxitrip->cus_name = $request->input('cus_name');
        $taxitrip->mobile = $request->input('mobile');
        $taxitrip->trip_type = "Normal trip";
        $taxitrip->distance = $request->input('distance');
        $taxitrip->w_hour = $request->input('w_hour');
        $taxitrip->w_charge = $request->input('w_charge');
        $taxitrip->driver_batta = $request->input('driver_batta');
        $taxitrip->total = $request->input('total');
        
        $taxitrip->save();

        return response()->json([
            'status' => 200,
            'message' => 'Taxi trip details sended',
        ]);
    }
}
