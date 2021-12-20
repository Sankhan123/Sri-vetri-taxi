<?php

use App\Http\Controllers\AccessController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PaymentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('/check-login',[LoginController::class,'check_login']);
Route::get('/cars-list',[AccessController::class,'get_cars']);
Route::post('/add-day-trip',[PaymentController::class,'add_day_trip']);
Route::post('/local-trip',[PaymentController::class,'add_local_trip']);
Route::post('/hills-trip',[PaymentController::class,'add_hills_trip']);
Route::post('/taxi-trip',[PaymentController::class,'add_taxi_trip']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
