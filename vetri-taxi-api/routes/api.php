<?php

use App\Http\Controllers\AccessController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::get('/log-out', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);

    Route::get('/cars-list',[AccessController::class,'get_cars']);
    Route::get('/cus-list',[AccessController::class,'get_customers']);
    Route::get('/cars-data/{id}',[AccessController::class,'get_trips']);
    
    Route::post('/add-day-trip',[PaymentController::class,'add_day_trip']);
    Route::post('/local-trip',[PaymentController::class,'add_local_trip']);
    Route::post('/hills-trip',[PaymentController::class,'add_hills_trip']);
    Route::post('/taxi-trip',[PaymentController::class,'add_taxi_trip']);
});
    
