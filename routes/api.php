<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\Products\ProductController;
use App\Http\Controllers\API\Poli\PoliController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/v1/register', [AuthController::class, 'register']);
Route::post('/v1/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function() {
    Route::apiResource('/users', UserController::class);
    Route::apiResource('/v1/products', ProductController::class);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/v1/getAllPoli', [PoliController::class, 'getAllPoli']);

    Route::get('/v1/countPoli', [PoliController::class, 'getCount']);
});

// Route::group(['middleware' => ['auth:sanctum']], function() {
//     Route::get('/user', function(Request $request) {
//         return auth()->user();
//     });
//     Route::apiResource('/users', UserController::class);
//     Route::apiResource('/v1/products', ProductController::class);
//     Route::post('/logout', [AuthController::class, 'logout']);
// });

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
