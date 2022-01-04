<?php

namespace App\Http\Controllers;

use App\Models\Hillstrip;
use App\Models\Localtrip;
use App\Models\Login;
use App\Models\Normaltaxi;
use App\Models\Oneday;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AccessController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function get_cars(){

        $result = Login::all();
        
        return response()->json([
            'status' => 200,
            'data' => $result,
        ]);
    }

    public function get_trips($id){

          $trips=DB::select("SELECT * FROM ((SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`car_id`,`cus_name`,`mobile`,`trip_type`,`trip_from`,`trip_to`,Null as `distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `hillstrip_details`)
          UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`car_id`,`cus_name`,`mobile`,`trip_type`,Null as `trip_from`,Null as `trip_to`,`distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `localtrip_details`)
              UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`car_id`,`cus_name`,`mobile`,`trip_type`,`from`,`to`,`distance`,`total`,`w_charge`,`driver_batta`,`created_at` FROM `normaltaxi_details`)
              UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`car_id`,`cus_name`,`mobile`,`trip_type`,Null as `trip_from`,Null as `trip_to`,`distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `onedaytrip_details`))
           AS result WHERE `result`.`car_id`=$id ORDER BY `result`.`created_at` DESC;");

        
        return response()->json([
            'status' => 200,
            'all' => $trips,
        ]);
    }
    public function get_customers(){

        $trips=DB::select("SELECT * FROM ((SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`cus_name` as customer,`mobile`,`trip_type`,`trip_from`,`trip_to`,Null as `distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `hillstrip_details`)
        UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`cus_name` as Customer,`mobile`,`trip_type`,Null as `trip_from`,Null as `trip_to`,`distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `localtrip_details`)
            UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`cus_name` as Customer,`mobile`,`trip_type`,`from`,`to`,`distance`,`total`,`w_charge`,`driver_batta`,`created_at` FROM `normaltaxi_details`)
            UNION ALL (SELECT DATE_FORMAT(`created_at`, '%d-%m-%Y') as date,TIME_FORMAT(`created_at`, '%h:%i %p') as time,`cus_name` as Customer,`mobile`,`trip_type`,Null as `trip_from`,Null as `trip_to`,`distance`,`total`,Null as `w_charge`,Null as `driver_batta`,`created_at` FROM `onedaytrip_details`))
         AS result ORDER BY `result`.`created_at` DESC;");

      
      return response()->json([
          'status' => 200,
          'all' => $trips,
      ]);
  }

  public function admin_report(){

  $one_day = DB::select("SELECT (SELECT sum(`total`) FROM `onedaytrip_details` WHERE `created_at` BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()) as `days`, SUM(`total`) as `total` FROM `onedaytrip_details`;");
   $taxi = DB::select("SELECT (SELECT sum(`total`) FROM `normaltaxi_details` WHERE `created_at` BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()) as `days`, SUM(`total`) as `total` FROM `normaltaxi_details`;");
   $local = DB::select("SELECT (SELECT sum(`total`) FROM `localtrip_details` WHERE `created_at` BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()) as `days`, SUM(`total`) as `total` FROM `localtrip_details`;");
   $hills = DB::select("SELECT (SELECT sum(`total`) FROM `hillstrip_details` WHERE `created_at` BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()) as `days`, SUM(`total`) as `total` FROM `hillstrip_details`;");
  return response()->json([
      'status' => 200,
      'one_day' => $one_day,
       'taxi' => $taxi,
       'local' => $local,
       'hills' => $hills,
  ]);
}
}
